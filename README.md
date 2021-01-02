# Relacon Relay Controller

## Overview

The Relacon relay controller is intended to be an open source hardware alternative to the [ADU218](https://www.ontrak.net/ADU218.htm) USB relay I/O interface from [OnTrak Control Systems, Inc](https://www.ontrak.net). The Relacon is not as robust as the commercial offering, but what it lacks in polish it makes up for in cost. Relacon relay controller is about an order of magnitude cheaper to make yourself compared to purchasing an ADU218.

## License

<img src="https://www.oshwa.org/wp-content/uploads/2014/03/oshw-logo.svg" width="100px" alt="Open Source Hardware Logo">

This hardware is Open Source Hardware licensed under the [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)  license.

## Features

The Relacon has numerous features that make it attractive for low cost applications:

* 8 solid-state relays capable of switching loads up to 60V AC/DC at 1A
* LED indicators corresponding to each relay output
* 8 digital inputs featuring event counters and configurable debounce setting
* Configurable watchdog to fail-open the relays if not actively receiving data from the host
* Full-speed USB Human Interface Device (HID) interface to PC requiring no custom drivers
* Compatibile with existing ADU218-based software applications
* Open source hardware design
    * Easy to modify to substitute in higher-power relays, etc.
* Open source firmware
    * Potential to utilize additional microcontroller peripherals (or repurpose digital inputs) on the expansion header
* No programmer hardware necessary to load the firmware (uses USB DFU bootloader)

That said, the current version of the Relacon hardware (rev. 1) lacks several of the niceties offered by the commercial ADU218 hardware, as indicated in the table below.

Feature | ADU218 | Relacon
--------|--------|---------
120V load capability | :heavy_check_mark: | :x:<br/>(60V load rating)
24V tolerant inputs | :heavy_check_mark: | :x:<br/>(3.3V inputs)
Operational status LED indicator | :heavy_check_mark: | :x:
Certified to various electrical standards | :heavy_check_mark: | :x:
Sturdy enclosure | :heavy_check_mark: | :x:

### Feature/Pin Mapping

The Relacon hardware follows the protocol and conventions of the OnTrak ADU218 relay controller. Because of hardware differences between the two devices, the port/pin designations used in the protocol layer do not directly map to those of the STM32F042K6. The mappings are shown below:

ADU Protocol Pin/Feature | STM32F042K6 Pin Mapping
-------------------|------------------------------
Relay PORTK[0] | PA0
Relay PORTK[1] | PA1
Relay PORTK[2] | PA2
Relay PORTK[3] | PA3
Relay PORTK[4] | PA4
Relay PORTK[5] | PA5
Relay PORTK[6] | PA6
Relay PORTK[7] | PA7
Digital Input PORTA[0] / Event Counter 0 | PB0
Digital Input PORTA[1] / Event Counter 1 | PB1
Digital Input PORTA[2] / Event Counter 2 | PA8 (note that there is no PB2 pin on the STM32F042K6T6 device)
Digital Input PORTA[3] / Event Counter 3 | PB3
Digital Input PORTB[0] / Event Counter 4 | PB4
Digital Input PORTB[1] / Event Counter 5 | PB5
Digital Input PORTB[2] / Event Counter 6 | PB6
Digital Input PORTB[3] / Event Counter 7 | PB7

Note that the silkscreen labels on the board near the terminal block shows the "K" designation for the relays. The silkscreen on the expansion header shows the actual STM32F042K6 pin names.

## Design

### Design Tools

This hardware was designed using the [KiCad](https://kicad.org/) electronic design automation suite for schematic capture and PCB layout. Additional scripts were used for generating the BOM for assembly [per instructions at JLCPCB](https://support.jlcpcb.com/article/84-how-to-generate-the-bom-and-centroid-file-from-kicad).

### Hardware Design

One of the design goals for this board was to support USB bootloading of the firmware on an unprogrammed microcontroller, allowing anyone to build and program the board without requiring any additional programming hardware. This contrained the selection of microcontrollers quite a bit. Another constraining factor was that I intended from the start to use JLCPCB for the PCB fabrication and assembly, so I was limited to their selection of microcontrollers. I ultimately settled on using a STM32F042K6T6 microcontroller.

Is a 32-bit ARM Cortex-M0 overkill for a simple relay controller? Absolutely. However, it was surprisingly inexpensive (I originally got them for $1.28 in individual quantities, although I may have capitalized on a price mistake, as they're now listed at $3.69 at the time of this writing), has an open source basic peripheral library, is compatible with the open source TinyUSB stack, and allows for the use of the well-known ARM GCC toolchain for firmware development.

The circuit design for this hardware is very straightforward. Power and communication with the PC come from the USB connection. A linear voltage regulator and some filtering capacitors are used to drop the voltage from the 5V USB VBUS power to the 3.3V suitable for the microcontroller. The microcontroller contains the firmware that controls the overall behavior of the product.

Although the STM32F042K6 GPIO pins are capable of sourcing or sinking up to 25mA each, the datasheet specifies that there is a cumulative limit of 80mA sourced or sunk among all GPIO pins. This means that when all 8 relays are enabled, those pins must not source/sink more than 10mA each. While 10mA should be sufficient to drive both the indicator LED and the solid-state relay for that channel, it is only by a narrow margin. In order to get more headroom (which may be useful particularly if additional GPIO are being used on the expansion header), a ULN2803A Darlington transistor array is used to drive the indicator LED and relay. The ULN2803A only draws about 1mA per channel, but can drive up to 500mA per channel. While overkill for the base design, this additional drive strength may be useful for modifications that substitute in traditional electromechanical relays, which typically require much more drive current than solid state relays but also provide higher power load switching.

An expansion header exposing additional pins from the microcontroller has been added for two purposes:
* This exposes the 8 input pins required for maintaining functional equivalence with the ADU218
* This makes additional microcontroller pins available for auxiliary functions through modifications to the open source [firmware](https://github.com/fjenner/Relacon-FW).

## Production

These boards (in particular, the component selection) were designed with [JLCPCB](https://jlcpcb.com/) in mind for low cost manufacturing and assembly. The Gerber files for the relevant layers, as well as the drill files, are located in the [gerber](production/gerber) directory, and have been generated per the instructions from JLCPCB [here](https://support.jlcpcb.com/article/102-kicad-515---generating-gerber-and-drill-files).

The BOM used for the assembly, as well as the pick-and-place files, are located in the [assembly](production/assembly) directory. These files have been prepared as described by [JLCPCB](https://support.jlcpcb.com/article/84-how-to-generate-the-bom-and-centroid-file-from-kicad). JLCPCB has a preview tool that shows the component placement and orientation given the pick-and-place files, and notes that the rotation/orientation [may need to be compensated for](https://support.jlcpcb.com/article/99-does-the-red-dot-means-pin-1-in-the-placement-previewer) if there are discrepancies between the zero-degree orientation of the footprint in the KiCad component library vs. their pick-and-place data for the component. This was the case for the U1, U2, and U3 components, so their rotation was manually adjusted in the pick-and-place files after the initial generation.

### Cost

At the time that I placed my order, the total cost (including shipping) for having JLCPCB fab and assemble 5 boards was $77.67, which comes out to about $15.54 per board. However, this includes a $7 discount from a new user coupon code, and that I believe there may have been a price mistake on the STM32F042K6, so take this cost figure with a grain of salt.

Importantly, JLCPCB does not do any through-hole assembly, so the price above does not include the cost of the through-hole parts: the USB connector, terminal blocks, and pin header. Fortunately, these are relatively low cost components. As of the time of this writing, the total cost to purchase those additional through-hole components for the 5 boards would come out to $8.18 (not including shipping), bringing the cost per board up to $17.18.

## Known Issues

Known issues are tracked in the GitHub issue tracker. However, critical issues affecting fundamental operation of the device are described here.

### BOOT0 Pin is Floating

In the current version of the hardware (Relacon Rev 1), the STM32F042K6 `BOOT0` pin (a.k.a `PB8`) is floating. This means that when the device is connected to USB and powers up, it is indeterminate as to whether it will enter the DFU bootloader or the normal firmware application. While an unfortunate oversight, there are several very easy workarounds for this as described below.

#### Workaround 1: Use a jumper on the expansion header to select the desired boot mode
Using a jumper wire, connect the `PB8` pin on the expansion header to either of the `GND` pins for normal firmware boot, or to the `+3V3` pin for DFU bootloading. Fortunately, because the `PB8` pin is adjacent to a `GND` pin on the header, a standard 2-pin jumper block can be used to pull down the `PB8` pin for normal firmware operation.

#### Workaround 2: Solder a pulldown resistor to the underside of the pin header
A small surface-mount resistor (in the 10k~100k range) can be easily added to the underside of the board, fitting quite nicely between the `PB8` pin and the and the adjacent `GND` pin on the expansion header. This approach is functionally similar to the above except that the expansion header pins are physically freed up during normal operation. You will still need to use a wire to temporarily jump the `PB8` pin to `+3V3` when flashing the firmware with the DFU bootloader.

#### Workaround 3: Disable DFU in the STM32F042K6 option byte after programming
This approach hasn't been tested, but in theory, programming the `BOOT_SEL` bit to 0 and the `nBOOT0` bit to 1 in the STM32F042K6 "option byte" should disable selection of the boot mode through the `BOOT0` pin and cause the device to only boot the user firmware application. This has the disadvantage that it will not be possible to update the firmware (or change the option byte to re-enable the `BOOT0` selection) without additional programming hardware.

## Firmware

For more information about the firmware that runs on the Relacon board, including how to fetch, build, and flash it, see the [Relacon Firmware repository](https://github.com/fjenner/Relacon-FW).
