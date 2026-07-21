## Clock 100 MHz (from Table 4)
set_property PACKAGE_PIN E3 [get_ports {clk_in}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_in}]

## Reset button (BTN0, C12 in Table 4)
set_property PACKAGE_PIN C12 [get_ports {reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset}]

## A(3 downto 0) on SW0..SW3  (J15, L16, M13, R15)
set_property PACKAGE_PIN J15 [get_ports {A[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]

set_property PACKAGE_PIN L16 [get_ports {A[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

set_property PACKAGE_PIN M13 [get_ports {A[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

set_property PACKAGE_PIN R15 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

## B(3 downto 0) on SW4..SW7  (R17, T18, U18, R13)
set_property PACKAGE_PIN R17 [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]

set_property PACKAGE_PIN T18 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]

set_property PACKAGE_PIN U18 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

set_property PACKAGE_PIN R13 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

## seg_out(6 downto 0) → CA..CG  (L18, T11, P15, K13, K16, R10, T10)
set_property PACKAGE_PIN L18 [get_ports {seg_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[0]}]

set_property PACKAGE_PIN T11 [get_ports {seg_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[1]}]

set_property PACKAGE_PIN P15 [get_ports {seg_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[2]}]

set_property PACKAGE_PIN K13 [get_ports {seg_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[3]}]

set_property PACKAGE_PIN K16 [get_ports {seg_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[4]}]

set_property PACKAGE_PIN R10 [get_ports {seg_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[5]}]

set_property PACKAGE_PIN T10 [get_ports {seg_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[6]}]

## an_out(7 downto 0) → AN7..AN0  (U13, K2, T14, P14, J14, T9, J18, J17)
set_property PACKAGE_PIN U13 [get_ports {an_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[7]}]

set_property PACKAGE_PIN K2  [get_ports {an_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[6]}]

set_property PACKAGE_PIN T14 [get_ports {an_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[5]}]

set_property PACKAGE_PIN P14 [get_ports {an_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[4]}]

set_property PACKAGE_PIN J14 [get_ports {an_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[3]}]

set_property PACKAGE_PIN T9  [get_ports {an_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[2]}]

set_property PACKAGE_PIN J18 [get_ports {an_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[1]}]

set_property PACKAGE_PIN J17 [get_ports {an_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_out[0]}]
