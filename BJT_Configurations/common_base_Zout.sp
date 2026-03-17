 Common Base Amplifier Model
VCC vcc 0 DC 12
Vin in 0 SIN(0 0.01 100)
C1 in e 10u
R1 vcc b 200k
R2 b 0 50k
Cb b 0 10u
Re e 0 1k
Rc vcc c 3k
Rl vout 0 100k
C2 c xout 10u

Vmeas xout Vout 0 

* Transistor
.model QNPN NPN (BF=100 VA=50 IS=1e-15)
Q1 c b e QNPN

* Simulation
.tran 10u 50m

.control
run
plot V(in) V(vout)

meas tran Vpp_in pp V(in)
meas tran Vpp_out pp V(vout)
meas tran I_in pp I(Vin)
meas tran i_out  pp i(Vmeas)

* Gain and output Resistance
plot Vpp_out/Vpp_in
plot Vpp_out/I_out
.endc

.end
