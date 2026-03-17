# Sallen-Key Low-Pass Filter (Second Order)

## 📌 Objective

To design and analyze a second-order active low-pass filter using the Sallen-Key topology.

---

## ⚙️ Circuit Description

The circuit uses:

* Two resistors (R1, R2)
* Two capacitors (C1, C2)
* An operational amplifier in unity gain configuration

This configuration improves filtering performance compared to passive filters.

---

## 🔧 Component Values

| Component | Value  |
| --------- | ------ |
| R1        | 10 kΩ  |
| R2        | 10 kΩ  |
| C1        | 100 nF |
| C2        | 100 nF |

---

## 📐 Theoretical Background

Cutoff frequency:

f_c = 1 / (2πRC)

f_c ≈ 159 Hz

Second-order filters provide steeper roll-off compared to first-order filters.

---

## 📊 Simulation

* Tool: LTspice
* Analysis: AC Sweep

---

## 📈 Results

* Flat passband response
* Cutoff near ~150 Hz
* Roll-off ≈ –40 dB/decade

---

## 🧠 Key Learnings

* Higher-order filters improve selectivity
* Op-amp buffering enhances stability
* Component matching affects performance

---

## 📁 Files Included

* `sallen_key_lowpass.asc`
* `bode_plot.png`

---

## 🚀 Conclusion

The Sallen-Key filter demonstrates improved attenuation and validates second-order filter behavior.

---
