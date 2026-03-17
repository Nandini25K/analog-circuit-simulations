* Common Emitter Amplifier Model
VCC vcc 0 DC 12
Vin in 0 SIN(0 0.01 100)   ; Small input signal

* Biasing network for Base
R1 vcc b 470k


* Input coupling capacitor
C1 in b 10u



* Collector resistor
Rc vcc c 3k

* Output coupling capacitor and load
C2 c vout 10u
Rl vout 0 300k

* Transistor
.model QNPN NPN (BF=100 VA=50 IS=1e-15)
Q1 c b 0 QNPN

* Simulation setup
.tran 10u 50m

.control
run
plot V(in) 
plot V(vout)

meas tran Vpp_in pp V(in)
meas tran Vpp_out pp V(vout)
meas tran I_in pp I(Vin)
meas tran i_out  pp i(Vmeas)

* Gain and output Resistance
plot Vpp_out/Vpp_in
plot Vpp_out/I_out
.endc

.end
