* Common Collector (Emitter Follower) Amplifier Model
VCC vcc 0 DC 12
Vin in 0 SIN(0 0.01 100)   ; Small input signal

* Biasing network for Base
R1 vcc b 100k
R2 b 0 20k

* Input coupling capacitor
C1 in b 10u

* Collector tied to VCC
Rc vcc c 1    ; very small (almost short), or directly tie C to VCC

* Emitter resistor (provides bias and output path)
Re e 0 1k

* Output coupling capacitor and load
C2 e vout 10u
Rl vout 0 100k

* Transistor
.model QNPN NPN (BF=100 VA=50 IS=1e-15)
Q1 c b e QNPN

* Simulation setup
.tran 10u 50m

.control
run
plot V(in) V(vout)

* Measurements
meas tran Vpp_in pp V(in)
meas tran Vpp_out pp V(vout)
meas tran I_in pp I(Vin)

* Voltage Gain (≈ 1) and Input Resistance
plot Vpp_out/Vpp_in
plot Vpp_in/I_in
.endc

.end
