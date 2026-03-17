# RC Low-Pass Filter (First Order)

##  Objective

To design and simulate a first-order RC low-pass filter and high pass filter and analyze its frequency response.


##  Circuit Description

The circuit consists of:

* One resistor (R)
* One capacitor (C)

The output is taken across the capacitor, forming a low-pass filter.
The output is taken across the resistor, forming a high pass filter


##  Component Values

| Component | Value  |
| --------- | ------ |
| R         | 10 kΩ  |
| C         | 100 nF |


##  Theoretical Background

The cutoff frequency is given by:

f_c = 1 / (2πRC)

For the chosen values:
f_c ≈ 159 Hz


## 📊 Simulation

* Tool used: LTspice
* Analysis: AC Sweep

Command used:
.ac dec 100 10 2000


## Results

* Constant gain at low frequencies
* Cutoff near ~150 Hz
* Roll-off ≈ –20 dB/decade beyond cutoff

This confirms first-order filter behavior.


## 🧠 Key Learnings

* First-order filters have gradual attenuation
* Cutoff frequency depends on R and C values
* Useful for noise reduction and signal smoothing




##  Conclusion

The simulation validates the expected behavior of a first-order low-pass filter and its frequency response characteristics.

---

