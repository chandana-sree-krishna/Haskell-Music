## Making Music with Haskell

[Original Rep: Credits](https://github.com/tsoding/haskell-music)

In this repo, Haskell is used to create music with the help of modules present in Haskell.

## Introduction
This Haskell script generates a sine wave audio signal with adjustable volume and plays it using the `ffplay` command-line tool. The generated audio signal is saved to a binary file in IEEE 32-bit floating-point format (`f32le`). The script provides functions to control the volume and pitch (frequency) of the generated sine wave.

## Features
- **Sine Wave Generation:** Generates a sine wave audio signal with adjustable volume and pitch.
- **Volume Control:** Allows adjusting the volume of the generated sine wave.
- **Pitch Control:** The pitch (frequency) of the sine wave can be controlled by adjusting the `step` parameter in the `wave` function.
- **Audio Playback:** Utilizes the `ffplay` command-line tool to play the generated audio signal in real-time.

## Prerequisites
- **Haskell Compiler (GHC):** Ensure Haskell is installed on your system.
- **ffplay:** Install the `ffplay` command-line tool, which is part of the FFmpeg package, to play audio files.

## Usage
1. **Adjust Parameters:** Modify the `volume` and `step` parameters in the script to control the volume and pitch of the generated sine wave, respectively.
2. **Compile the Script:** Compile the Haskell script using GHC if necessary.
3. **Run the Script:** Execute the compiled binary or run the Haskell script directly.
4. **Audio Playback:** Upon running the script, the generated audio will be played using the `ffplay` command-line tool.

## Files Description
- **audio_generator.hs:** Main Haskell script for generating and playing the sine wave audio signal.
- **output.bin:** Output binary file where the generated audio signal is saved.

## Example
```bash
$ ghc Main.hs
$ ./Main

