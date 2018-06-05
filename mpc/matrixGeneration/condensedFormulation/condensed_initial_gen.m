function [ Phi ] = condensed_initial_gen( A, N )
%CONDENSED_INITIAL_GEN Generate the initial state mapping matrix
%
% Create the condensed initial state mapping matrix for the linear
% time-invariant MPC problem.
%
%
% Usage:
%   [ Phi ] = CONDENSED_INITIAL_GEN( A, N )
%
% Inputs:
%   A - The state transition matrix
%   N - The horizon length
%
% Outputs:
%   Phi - The mapping matrix
%
%
% Created by: Ian McInerney
% Created on: May 22, 2018
% Version: 1.0
% Last Modified: May 22, 2018
%
% Revision History
%   1.0 - Initial release  


%% Create some variables
inter = A;
Phi = [];


%% Iterate over the horizon creating the powers of A
for (i = 1:1:N)
    inter = inter^(i);
    
    % Append the most recent power to the matrix
    Phi = [Phi;
           inter];
end

end