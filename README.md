# Debouncing Circuit and Edge Detection
Mechanical push buttons do not give a clean digital signal when pressed. Due to mechanical vibrations inside the switch, the signal rapidly changes between HIGH and LOW for a few milliseconds before becoming stable. This effect is called switch bouncing and can cause multiple unwanted detections for a single button press.

This project implements a Finite State Machine (FSM)-based switch debouncing and edge detection circuit in Verilog for FPGA systems. The circuit removes unwanted bouncing signals and ensures that only one valid button press is detected.

The design first uses a 2-flip-flop synchronizer to synchronize the asynchronous button input with the FPGA clock and avoid metastability problems. An FSM then checks whether the button remains stable for a fixed debounce time before accepting it as a valid press or release.

SCHEMATIC
<img width="1566" height="453" alt="image" src="https://github.com/user-attachments/assets/8c5f80e0-a997-437e-8528-8f7283c23708" />
