clear all, close all; clearvars; clc;
X = readtable('coalitionforhomeless.xlsx');

%%Make a table of all of the features, so we can decide what matters most
%%to us.
%Delete first column

X(:,1) = [];
features = X(1,:);
feat = table2cell(features);
f = feat.'; % Table of features


%%Work with data from full applicant pool (first phase of applications)
data1 = X(2:end,1:64);
enrolled = data1(:,64);
d1 = table2array(data1);

for i=1:size(d1)
   a=cell{i};
   for j=1:length(a)
   if a(j)==string('No') %(example conditions put your own)
       a(j)=0;
   end
   cell{i}=a;
   end
end

% if d1(1,2) == string('No')
%     d1(1,2) = cell{0};
% end

% i = 1, j=1;
% for i=1:size(d1)
%     for j=1:size(d1)
%         if 
%     end
% end

% for d1(i,j) = d1(1,1):size(d1)
%    i=i+1;
%    j=j+1;
% end 





% d1.Properties.VariableNames = Variable_Names;
% lData = d1;
% Y = table2array(enrolled);
% 
% mdl = fitlm(lData,'linear','ResponseVar','PROGRAM','PredictorVars',minMSEModel)
