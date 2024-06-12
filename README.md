# Matlab-DSP-GUI

## Introduction
Welcome to the **Matlab-DSP-GUI** project! This repository houses a MATLAB-based graphical user interface (GUI) designed for various digital signal processing (DSP) tasks. Whether you are an audio enthusiast, a DSP student, or a professional, this tool provides an intuitive and interactive way to manipulate and analyze audio signals.

## Features
### 1. Beep Sound Generation
- **Button:** `Beep`
- **Description:** Generates a simple beep sound at a frequency of 400 Hz for one second.

### 2. White Noise Generation
- **Button:** `White Noise`
- **Description:** Plays a one-second white noise signal.

### 3. Play Audio File
- **Button:** `Play Chippi`
- **Description:** Plays the audio file named "chipi_chipi_dubi_dubi_Cat_Dancing.wav".

### 4. Add Noise to Audio
- **Button:** `Noisy Chippi`
- **Description:** Records an audio signal and adds white noise to it.

### 5. Record and Play Audio
- **Button:** `Record and Play`
- **Description:** Records audio for a specified number of seconds and plays it back. Offers options to play clean or with added white noise.

### 6. Record with Echoes
- **Button:** `Record with Echoes`
- **Description:** Records audio and plays it back with multiple echo effects.

### 7. Change Volume
- **Button:** `Change Volume`
- **Description:** Records audio and allows users to play it back with increased or decreased volume.

### 8. Change Playback Speed
- **Button:** `Speed Changer`
- **Description:** Records audio and allows users to play it back at different speeds (2x faster or 0.5x slower).

### 9. Remove Noise from Audio
- **Button:** `Remove Noise`
- **Description:** Records audio and filters out noise using a high-pass filter.

### 10. Plot Audio Signal
- **Button:** `Plot Audio Signal`
- **Description:** Plots the waveform of the audio file "chipi_chipi_dubi_dubi_Cat_Dancing.wav".

### 11. Multiply Audio Signals
- **Button:** `Multiply`
- **Description:** Multiplies the waveforms of two audio files and plots the result.

### 12. Subtract Audio Signals
- **Button:** `Subtract`
- **Description:** Subtracts the waveform of one audio file from another and plots the result.

## Installation
To use this project, you will need MATLAB installed on your computer. Additionally, ensure you have the necessary audio files:
- "chipi_chipi_dubi_dubi_Cat_Dancing.wav"
- "10_Second_Beep_Timer.wav"

### Steps
1. Clone this repository to your local machine.
   ```bash
   [git clone https://github.com/yourusername/Matlab-DSP-GUI.git](https://github.com/omarovici/Matlab-DSP-GUI.git)
   ```
2. Open MATLAB and navigate to the cloned repository directory.
3. Run the main GUI function.
   ```matlab
   createGUI3
   ```

## Usage
1. Launch the GUI by running `createGUI3` in the MATLAB command window.
2. Use the buttons on the GUI to perform various DSP tasks.
3. Follow on-screen prompts for recording durations and options.

---

By providing a comprehensive set of tools for digital signal processing, **Matlab-DSP-GUI** aims to be an essential utility for anyone working with audio signals. Dive in, explore, and contribute to make it even better!

