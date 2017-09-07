function ret = cd1(rbm_w, visible_data)
  visible_data = sample_bernoulli(visible_data);
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_data> is a (possibly but not necessarily binary) matrix of size <number of visible units> by <number of data cases>
% The returned value is the gradient approximation produced by CD-1. It's of the same shape as <rbm_w>.
    
    % Pancho:
%    disp('Pancho was here!')
    
    % Get your hidden state
    hidden_prob = visible_state_to_hidden_probabilities(rbm_w, visible_data);
    hidden_binary = sample_bernoulli(hidden_prob);
    
    % Reconstruct the visual
    visible_reconstructed_prob = hidden_state_to_visible_probabilities(rbm_w, hidden_binary);
    visible_reconstructed_binary = sample_bernoulli(visible_reconstructed_prob);
    
    % Reconstruct the hidden
    hidden_reconstructed_prob = visible_state_to_hidden_probabilities(rbm_w, visible_reconstructed_binary);
    hidden_reconstructed_binary = sample_bernoulli(hidden_reconstructed_prob);
    
%    % Get the gradients
%    d_G_by_rbm_w_0 = configuration_goodness_gradient(visible_data, hidden_binary);
%    d_G_by_rbm_w_1 = configuration_goodness_gradient(visible_reconstructed_binary, ...
%      hidden_reconstructed_binary);
      
    % Get the gradients with conditionals
    d_G_by_rbm_w_0 = configuration_goodness_gradient(visible_data, hidden_binary);
    d_G_by_rbm_w_1 = configuration_goodness_gradient(visible_reconstructed_binary, ...
      hidden_reconstructed_prob);
    
    ret = d_G_by_rbm_w_0 - d_G_by_rbm_w_1;
    
%    error('not yet implemented');
end
