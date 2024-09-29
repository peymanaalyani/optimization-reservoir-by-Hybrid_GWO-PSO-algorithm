% this script implements the hybrid of PSO and GWO optimization algorithm. 
%This code is developed at https://free-thesis.com
% GWO code from https://in.mathworks.com/matlabcentral/fileexchange/44974-grey-wolf-optimizer-gwo
%is extended to make it hybrid with PSO and better than GWO.

%%

clear all 
clc
close all

model=CreateModel();        % Create simulation Model

SearchAgents_no=4; % Number of search agents

Function_name='F1'; % Name of the test function that can be from F1 to F23 (Table 1,2,3 in the paper)

Max_iteration=100; % Maximum numbef of iterations

% Load details of the selected benchmark function
[lb,ub,dim,fobj]=Get_Functions_details(Function_name);

[Best_score,Best_pos,PSOGWO_cg_curve]=PSOGWO(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);

  
%% Plot Results

figure;
plot(1:Max_iteration,PSOGWO_cg_curve,'LineWidth',2.5);
xlabel('Iteration')
ylabel('Best Cost');
title('Trend of PSOGWO')      

display(['The best solution obtained by PSOGWO is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by PSOGWO is : ', num2str(Best_score)]);
