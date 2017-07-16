% pancho's script to loop over
% I stole this from the original loop script. This just loops over different values for neurons.
%momentums = [0, 0.9]
%learning_rates = [0.002, 0.01, 0.05, 0.2, 1.0, 5.0, 20.0]
neurons = [18,37,113,236,83]

for i =1:length(neurons)
%  for j = 1:length(learning_rates)
    display('neurons in hidden layer:')
    display(neurons(i))
%    display('learning_rate:')
%    display(learning_rates(j))

%    a3(wd_coefficient, n_hid, n_iters, learning_rate, momentum_multiplier, do_early_stopping, mini_batch_size)
    a3(0, neurons(i), 1000, 0.35, 0.9, true, 100)
    
%  end
end
