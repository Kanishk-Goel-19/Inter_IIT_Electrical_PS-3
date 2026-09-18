plant = tf(1.5, [0.35, 1]);
Ts = 0.01; % 100 Hz sample rate 
mpcobj = mpc(plant, Ts);
mpcobj.PredictionHorizon = 20; 
mpcobj.ControlHorizon = 3;


mpcobj.MV(1).Min = -12;
mpcobj.MV(1).Max = 12;


mpcobj.Weights.OV = 1.0;       % Output Variable (Speed)
mpcobj.Weights.MVRate = 0.1;   % Manipulated Variable Rate (Voltage changes)