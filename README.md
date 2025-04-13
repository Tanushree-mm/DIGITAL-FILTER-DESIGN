# DIGITAL-FILTER-DESIGN

*COMPANY*: CODETECH IT SOLUTION

*NAME*: TANUSHREE M M

*INTERN ID*: CT06WG114

*DOMAIN*: VLSI

*MENTOR*: NEELA SANTOSH

*DESCRIPTION*:

This repository presents the design and simulation of a Digital Finite Impulse Response (FIR) Filter using Verilog HDL, developed and verified through Cadence Virtuoso—an industry-standard platform for custom digital and mixed-signal IC design. FIR filters are fundamental components in digital signal processing (DSP), widely used in applications like audio processing, communication systems, image enhancement, and more.

The purpose of this project is to implement a simple, yet practical FIR filter in Verilog, simulate it in Cadence Virtuoso, and analyze its performance with respect to time-domain filtering behavior.

Project Overview
The FIR filter implemented here performs linear convolution on digital input data with a fixed set of coefficients (taps). The filter is designed to operate on a stream of input samples, apply a weighted sum using the coefficient values, and generate a filtered output.



This project focuses on synchronous, clocked operation, making it suitable for integration into hardware-based DSP systems.

FIR Filter Design Details
Key Parameters:
Filter Type: Low-pass (can be customized)

Number of Taps: Configurable (default: 4-tap)

Data Width: 8-bit input/output

Coefficient Width: 8-bit signed

Clocked Operation: One output per clock cycle after pipeline fill

Signed Arithmetic Support: Supports negative and positive coefficient values

Modules:
task4.v: Main Verilog module implementing the FIR logic

task4_tb.v: Testbench for functional verification with test input samples

coefficients: Defined inside the module or can be loaded from a memory initialization file (MIF)

Simulation in Cadence Virtuoso
The filter was designed and verified using Cadence Virtuoso:

RTL Design: Verilog HDL code was entered through Virtuoso's digital design environment

Simulation Environment: Cadence ADE (Analog Design Environment) was used to simulate testbenches

Waveform Analysis: Output waveforms were examined to confirm the filter’s frequency response and time-domain behavior

Pipelined Structure: Implemented optional pipelining for improved timing performance

Features & Learning Objectives
Understand the principles of FIR digital filtering

Implement MAC (Multiply-Accumulate) operations using Verilog

Create and verify hardware-implementable DSP modules

Analyze filter behavior through Cadence’s waveform viewer

Explore fixed-point arithmetic and precision limitations in digital filters

 Use Cases
Audio signal filtering (noise reduction, smoothing)

Sensor data processing

Preprocessing in ADC/DAC systems

Embedded DSP for FPGAs or ASICs

 How to Use the Project
Open Cadence Virtuoso

Import or create a new cell with the task4.v module

Add the testbench (task4_tb.v) and connect clock, reset, input data, and output

Simulate using ADE and observe the output waveform

(Optional) Modify coefficients or number of taps for custom filtering behavior

MATLAB: 

Run the code given in FIR_MATLAB, the output will display as given below.

Future Enhancements
Load coefficients dynamically via memory file

Add support for parameterized filter length and bit-width

Implement filter coefficient generator from MATLAB

Integrate with FFT/IFFT modules for advanced DSP processing

Test on real-time signal data streams

*CODE*:

![Image](https://github.com/user-attachments/assets/901e5a10-14c5-47c0-8c39-6b519a3323e7)

![Image](https://github.com/user-attachments/assets/fba149dc-fad6-4b10-9750-bf81e8f86122)

*OUTPUT*: 

![Image](https://github.com/user-attachments/assets/b62c30e6-48a2-4f90-9142-bcacca36179b)

![Image](https://github.com/user-attachments/assets/a839224d-16c6-4f19-a104-d5b913b91f08)

*MATLAB OUTPUTS*:

![Image](https://github.com/user-attachments/assets/8844f9e4-7f88-42bb-b81c-86541706277b)

![Image](https://github.com/user-attachments/assets/6cc5912e-3243-46c1-ad81-109ea715abd8)


