# Butterworth Lowpass Filter Design
The following represents the design of a Butterworth lowpass filter using MATLAB/Octave. This filter design is based on the given specifications:

* Passband ripple: alphap = 4 dB
* Stopband attenuation: alphas = 30 dB
* Passband edge frequency: fp = 800 Hz
* Stopband edge frequency: fs = 400 Hz
* Sampling frequency: f = 5500 Hz

The code begins by clearing the workspace and closing all open figures. It then defines the filter specifications, including the passband ripple (alphap), stopband attenuation (alphas), passband edge frequency (fp), stopband edge frequency (fs), and sampling frequency (f).

Next, the code calculates the normalized frequencies (ohmp and ohms) based on the given edge frequencies and the sampling frequency. These normalized frequencies are used in the buttord function to determine the filter order (N) and cutoff frequencies (wn) for the Butterworth filter.

Using the obtained filter order and cutoff frequencies, the butter function is called to design the Butterworth lowpass filter. The filter coefficients (B and A) are obtained and stored.

The code then generates a vector t to represent the range of frequencies at which the frequency response of the filter will be evaluated. The freqz function is used to compute the frequency response of the filter (h) and the corresponding frequencies (ohm).

Finally, the code plots the frequency response, gain in dB, and phase response of the filter using the subplot and plot functions. Each subplot is labeled with appropriate titles and axis labels.

Note: This code assumes that you have the Signal Processing Toolbox installed, as it relies on the buttord and butter functions for Butterworth filter design, as well as the freqz function for frequency response computation.
