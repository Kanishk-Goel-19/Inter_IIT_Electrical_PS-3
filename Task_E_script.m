disp('Running PID Simulation...');
tic; % Start stopwatch
sim('Task_B'); 
pid_time = toc; % Stop stopwatch

disp('Running MPC Simulation...');
tic; % Start stopwatch
sim('Task_D'); 
mpc_time = toc; % Stop stopwatch

fprintf('---------------------------------\n');
fprintf('PID Compute Time: %f seconds\n', pid_time);
fprintf('MPC Compute Time: %f seconds\n', mpc_time);
fprintf('MPC was %.1f times slower to compute!\n', mpc_time / pid_time);