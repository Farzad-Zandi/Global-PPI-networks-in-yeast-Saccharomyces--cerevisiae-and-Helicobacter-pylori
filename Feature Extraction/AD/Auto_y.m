clear
clc
load Matine_Data
load property
tic
OriginData = property;
OriginData = zscore(OriginData);
OriginData = OriginData';
num1 = numel(P_protein_a);
lag = 11;
Auto_Pa = [];
Auto_Pb = [];
Auto_Na = [];
Auto_Nb = [];
for i = 1 : num1
[M1] = Auto1(P_protein_a{i},OriginData,lag);
[M2] = Auto2(P_protein_a{i},OriginData,lag);
[M3] = Auto3(P_protein_a{i},OriginData,lag);
M = [M1,M2,M3];
Auto_Pa = [Auto_Pa;M];
clear M;clear M1 M2 M3;
end
for i = 1 : num1
[M1] = Auto1(P_protein_b{i},OriginData,lag);
[M2] = Auto2(P_protein_b{i},OriginData,lag);
[M3] = Auto3(P_protein_b{i},OriginData,lag);
M = [M1,M2,M3];
Auto_Pb = [Auto_Pb;M];
clear M;clear M1 M2 M3;
end
for i = 1 : num1
[M1] = Auto1(N_protein_a{i},OriginData,lag);
[M2] = Auto2(N_protein_a{i},OriginData,lag);
[M3] = Auto3(N_protein_a{i},OriginData,lag);
M = [M1,M2,M3];
Auto_Na = [Auto_Na;M];
clear M;clear M1 M2 M3;
end
for i = 1 : num1
[M1] = Auto1(N_protein_a{i},OriginData,lag);
[M2] = Auto2(N_protein_a{i},OriginData,lag);
[M3] = Auto3(N_protein_a{i},OriginData,lag);
M = [M1,M2,M3];
Auto_Nb = [Auto_Nb;M];
clear M;clear M1 M2 M3;
end
data_Auto = [[Auto_Pa,Auto_Pb];[Auto_Na,Auto_Nb]];
data_Auto = [[ones(1458,1);zeros(1458,1)],data_Auto];
toc
save data_y_Auto_11.mat data_Auto
save Auto_y_11.mat Auto_Pa Auto_Pb Auto_Na Auto_Nb

