## Clock input (clk_in) - E3
set_property PACKAGE_PIN E3 [get_ports {clk_in}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_in}]

## Reset input (reset) - C12
set_property PACKAGE_PIN C12 [get_ports {reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset}]

## LEDs led_out(0..15)
## LED0 to LED15: H17 K15 J13 N14 R18 V17 U17 U16 V16 T15 U14 T16 V15 V14 V12 V11

set_property PACKAGE_PIN H17 [get_ports {led_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[0]}]

set_property PACKAGE_PIN K15 [get_ports {led_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[1]}]

set_property PACKAGE_PIN J13 [get_ports {led_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[2]}]

set_property PACKAGE_PIN N14 [get_ports {led_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[3]}]

set_property PACKAGE_PIN R18 [get_ports {led_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[4]}]

set_property PACKAGE_PIN V17 [get_ports {led_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[5]}]

set_property PACKAGE_PIN U17 [get_ports {led_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[6]}]

set_property PACKAGE_PIN U16 [get_ports {led_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[7]}]

set_property PACKAGE_PIN V16 [get_ports {led_out[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[8]}]

set_property PACKAGE_PIN T15 [get_ports {led_out[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[9]}]

set_property PACKAGE_PIN U14 [get_ports {led_out[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[10]}]

set_property PACKAGE_PIN T16 [get_ports {led_out[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[11]}]

set_property PACKAGE_PIN V15 [get_ports {led_out[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[12]}]

set_property PACKAGE_PIN V14 [get_ports {led_out[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[13]}]

set_property PACKAGE_PIN V12 [get_ports {led_out[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[14]}]

set_property PACKAGE_PIN V11 [get_ports {led_out[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_out[15]}]
