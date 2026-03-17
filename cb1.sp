*cb model
vcc vcc 0 dc 12
vin in 0 sin(0 0.01 100)
c1 in e 10u
r1 vcc b 200k
r2 b 0 50k
cb b 0 10u
re e 0 1k
rc vcc c 3k
c2 c vout 10u
rl vout  0 100k
*transistor
.model QNPN NPN ( BF = 100 VA = 50 IS = 1e-15)
Q1 C B E QNPN
.tran 10u 50m 
.control
run 
plot V(IN)
plot V(VOUT)

meas tran Vpp_in pp v(IN)
meas tran Vpp_out pp v(VOUT)
meas tran i_in pp i(Vin)
plot vpp_out/vpp_in
plot vpp_in/i_in
.endc
.end 

.endc
.end 
