
ydata = out.speed.Data;
udata = out.voltage.Data;

Ts = 0.005; 

data = iddata(ydata, udata, Ts);

sys = tfest(data, 2, 0);

sys