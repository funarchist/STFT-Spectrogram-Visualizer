# STFT-Spectrogram-Visualizer

This repository contains the implementation of a MATLAB-based project for generating and analyzing audio signals using the Short-Time Fourier Transform (STFT). The project was developed as part of the EE430 Digital Signal Processing course at Middle East Technical University.

## Features

- **Data Acquisition**: Record live audio via a microphone or load pre-recorded `.wav` or `.mp3` files.
- **Data Generation**: Generate sinusoidal signals, windowed sinusoids, or signals with multiple components.
- **Time-Domain Visualization**: Plot the amplitude of audio signals over time.
- **Custom Spectrogram Implementation**: Visualize frequency content using a manually written STFT and spectrogram function (without using MATLAB's built-in `spectrogram()`).
- **Parameter Adjustments**: Customize window size, overlap, and windowing function (Rectangular or Hamming).

## Methods

### Short-Time Fourier Transform (STFT)
The STFT is used to analyze how the frequency content of a signal evolves over time. The implementation balances the trade-off between time and frequency resolution by varying window lengths and overlap parameters.

### Windowing Functions
Two types of windows are implemented:
- **Rectangular Window**: Simplest window type with uniform weights.
- **Hamming Window**: Smoothly tapers signal edges to reduce spectral leakage.

### Spectrogram Visualization
Spectrograms are visualized as heatmaps, with:
- **X-Axis**: Time intervals
- **Y-Axis**: Frequency components
- **Color Intensity**: Magnitude of frequency components

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/STFT-Spectrogram-Visualizer.git
   cd STFT-Spectrogram-Visualizer
   ```

2. Open MATLAB and navigate to the repository folder.

3. Run the main script:
   ```matlab
   main_code
   ```

4. Follow the command-line prompts to:
   - Record or load audio signals.
   - Generate custom signals.
   - Visualize signals in time and frequency domains.

## References

1. Jeon, H., Jung, Y., Lee, S., & Jung, Y. (2020). "Area-efficient short-time Fourier transform processor for time–frequency analysis of non-stationary signals," *Applied Sciences*, 10(20), 7208.
2. [Windowing Process Data - Vibration Research Unit](https://vru.vibrationresearch.com/lesson/windowing-process-data/)
3. [Real-Time Audio in MATLAB](https://www.mathworks.com/help/audio/gs/real-time-audio-in-matlab.html)














