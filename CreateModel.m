 function model=CreateModel()

%% Command to run ECLIPSE
  
  %% read .RSM file
fid = fopen('C:\Users\peyman\Desktop\Hybrid_GWO-PSO\eclipse_files\GAS-CUBE.RSM');
f= textscan(fid,'%s ' , 'delimiter','\n');
fclose(fid);

%reads third column (FGPT)
c=f{1,1}(9:112);
c=str2num(cell2mat(c));
c=c(104,3); 
FGPT=[c];

%reads 4th column (FWPT)
% d=f{1,1}(9:22);
% d=str2num(cell2mat(d));
% d=d(14,4); 
% FWPT=[d];

%reads 5th column (x)
% g=f{1,1}(9:22);
% g=str2num(cell2mat(g));
% g=g(14,5); 
% x=[g];
% n=1;

%    model.n=n;
   model.FGPT=FGPT;
%    model.FWPT=FWPT;
 
 end