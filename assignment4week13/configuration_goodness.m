function G = configuration_goodness(rbm_w, visible_state, hidden_state)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_state> is a binary matrix of size <number of visible units> by <number of configurations that we're handling in parallel>.
% <hidden_state> is a binary matrix of size <number of hidden units> by <number of configurations that we're handling in parallel>.
% This returns a scalar: the mean over cases of the goodness (negative energy) of the described configurations.
    
    % Pancho: I think you have to multiply all variables 

    % This is the first attempt. Only worked with one case. Brokedown with multiple cases    
%    G = (rbm_w * visible_state)' * hidden_state;

    % You need to do what you did earlier but for each individual case. 
    % Then you need to take the mean.
    G = 0 
    for i = 1:size(visible_state,2)
      G = G + ((rbm_w * visible_state(:,i))' * hidden_state(:,i));
    end
    % This will cause the mean to be computed.  
    G = G / size(visible_state,2);
    
%    error('not yet implemented');
end
