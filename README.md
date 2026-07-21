# FPGA / VHDL Labs : 4-bit Adder to Stopwatch

These are five labs I built for my Integrated Circuit Design course, written in VHDL and tested on real hardware. We start simple (a 4-bit adder) and each one builds on the last, ending with a working stopwatch you can start, stop, and reset on a 7-segment display.

**Tool:** Xilinx Vivado 2025.2
**Language:** VHDL
**Board:** Digilent Nexys 4 DDR (Xilinx Artix-7, `XC7A100T-CSG324-1`)

## What's in each lab

| Lab | Top module | What it does | Reuses |
|---|---|---|---|
| Lab_01 | `adder_4bit` | 4-bit ripple-carry adder | `FullAdder`, `HalfAdder` |
| Lab_02 | `chaser` | LED chaser running off a clock divider | `ClockDiv`, `Ring` |
| Lab_03 | `led_driver_tl` | Multiplexed 7-segment display driver | `led_driver`, `digit_mux`, `dec_2_7seg`, `ClockDiv`, `Ring` |
| Lab_04 | `adder_led` | Same 4-bit adder, but now the result shows up on the 7-segment display | `adder_4bit`, `led_driver`, `HalfAdder` |
| Lab_05 | `stopwatch` | Full stopwatch — start/stop/reset, shown on the display | `stopwatch_sm`, `counter` (x8), `led_driver`, `ClockDiv` |

Lab_05 is the one I'd point someone to first — it pulls together the clock divider from Lab_02 and the display driver from Lab_03 into an actual stopwatch, running on the board.

## Running on hardware

<img width="525" height="362" alt="image" src="https://github.com/user-attachments/assets/4d49a6ab-b2a4-440d-b7dc-dbad4255fde5" />

## Repo layout

```
├── Lab_01_4bit_Adder/
│   ├── LAB_01.xpr
│   ├── LAB_01.srcs/        (RTL, constraints, testbenches)
│   └── README.md           (schematic + bitstream screenshots)
├── Lab_02_chaser/
├── Lab_03_led_driver/
├── Lab_04_adder_led/
├── Lab_05_stopwatch/
├── .gitignore
└── README.md
```

Each lab is its own standalone Vivado project — just the `.xpr` file and the `.srcs` folder (source code, constraints, testbenches). I left out everything Vivado generates on its own (`.cache`, `.runs`, `.sim`, `.ip_user_files`, log/journal files, `.dcp` checkpoints) since none of that is useful to anyone browsing the repo, and Vivado rebuilds it automatically the moment you open a project.

Because each lab folder is a separate project, a few modules show up more than once across folders — `ClockDiv` and `Ring` in particular get reused from Lab_02 all the way through to Lab_05. That's not a mistake, it's just how Vivado organizes sources per-project.

## Opening a lab yourself

1. Clone the repo.
2. In Vivado: `File > Open Project`, pick the `.xpr` inside whichever lab folder you want.
3. Give it a minute — Vivado will regenerate its working folders the first time.

## About the testbenches

Lab_01 and Lab_02 have real testbenches (`TB_FullAdder`, `TB_HalfAdder`, `adder_4bit_TBW` for Lab_01; `chaser_TBW`, `ClockDiv_TBW`, `Ring_TBW` for Lab_02). For Lab_03, Lab_04, and Lab_05 I relied on the sub-module testbenches plus testing directly on the board instead of writing new ones for the combined designs — so there's nothing extra to look for there, that's expected.

## A couple of things worth knowing

- The `.xpr` files remember the absolute path they were created at, so if Vivado complains about a missing path when you open one, just re-point it in `File > Project Settings`, or start a fresh project and add the `.srcs` files manually.
- Each lab folder also has its own small README with a schematic screenshot and the Design Runs / bitstream status for that specific design.
