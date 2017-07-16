% pancho's script to loop over
% This guy loops over various values of momentum_multiplier and learning_rates
% Just makes it convinient so that you don't have to keep entering values all the time.
% Just make sure that the gradient checker is off. Takes quite a bit of precious training time.

momentums = [0, 0.9]
learning_rates = [0.002, 0.01, 0.05, 0.2, 1.0, 5.0, 20.0]

for i =1:length(momentums)
  for j = 1:length(learning_rates)
    display('momentum_multiplier:')
    display(momentums(i))
    display('learning_rate:')
    display(learning_rates(j))

%    a3(wd_coefficient, n_hid, n_iters, learning_rate, momentum_multiplier, do_early_stopping, mini_batch_size)
    a3(0, 10, 70, learning_rates(j), momentums(i), false, 4)
    
  end
end
