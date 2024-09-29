% This function containts full information and implementations of the benchmark 
% functions in Table 1, Table 2, and Table 3 in the paper

% lb is the lower bound: lb=[lb_1,lb_2,...,lb_d]
% up is the uppper bound: ub=[ub_1,ub_2,...,ub_d]
% dim is the number of variables (dimension of the problem)

function [lb,ub,dim,fobj] = Get_Functions_details(F)


switch F
    case 'F1'
        fobj = @F1;
        lb=500;
        ub=50000;
        dim=1;
        
    
        
           
end

end

% F1

function o = F1(x)


              model=UpdateModel(x);



    FGPT=model.FGPT;
%     FWPT= model.FWPT;
    

    o=1/FGPT;
    
%     Violation=min(FGPT/FWPT-1,0);

%     sol.gas_value=FGPT;
   
%     sol.IsFeasible=(Violation==0);
end






