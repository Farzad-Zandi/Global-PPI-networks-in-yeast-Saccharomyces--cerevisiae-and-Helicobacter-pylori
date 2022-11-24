clear
clc
load PSSM_y1_end
load PSSM_y2_end
load PSSM_y3_end
load PSSM_y4_end
lambda = 9;
result_Pa = PSSM_y1_data;
result_Pb = PSSM_y2_data;
result_Na = PSSM_y3_data;
result_Nb = PSSM_y4_data;
SMR_y_Pa = PsePSSM(result_Pa,lamda);
SMR_y_Pb = PsePSSM(result_Pb,lamda);
SMR_y_Na = PsePSSM(result_Na,lamda);
SMR_y_Nb = PsePSSM(result_Nb,lamda);
PSSM_Py = [SMR_y_Pa,SMR_y_Pb];
PSSM_Ny = [SMR_y_Na,SMR_y_Nb];
save PSSM_y_e_9.mat PSSM_Py PSSM_Ny
