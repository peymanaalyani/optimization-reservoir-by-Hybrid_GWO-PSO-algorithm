function model=UpdateModel(x)
 
%% write .DATA  file

    fid=fopen('C:\Users\peyman\Desktop\Hybrid_GWO-PSO\eclipse_files\WCONPROD.m','w');
    fprintf(fid,'WCONPROD\n');
    fprintf(fid,'A OPEN GRAT 2* %d /\n',x);
    fprintf(fid,'/\n');
    fclose(fid);

 
   

  %% read .RSM file

fid = fopen('C:\Users\peyman\Desktop\Hybrid_GWO-PSO\eclipse_files\GAS-CUBE.RSM','r');
f= textscan(fid,'%s ' , 'delimiter','\n');
fclose(fid);

%reads third column (FGPT)
c=f{1,1}(9:112);
c=str2num(cell2mat(c));
c=c(104,3); 
FGPT=[c];

%reads 4th column (FWPT)
% c=f{1,1}(9:113);
% c=str2num(cell2mat(c));
% c=c(105,3); 
% FGPT=[c];

%reads 5th column (x)
% g=f{1,1}(9:22);
% g=str2num(cell2mat(g));
% g=g(14,5); 
% x=[g];

   model.FGPT=FGPT;
%    model.FWPT=FWPT;
  
 end
