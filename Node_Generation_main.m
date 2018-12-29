clear
clc
close all

No_of_Nodes = 100;
Max_range = 200;
file_name = 'NodeGene100.txt';
seed = 1;

fp = fopen(file_name,'w');
Random_Node_Generation(Max_range,No_of_Nodes,seed,fp);
fclose(fp);