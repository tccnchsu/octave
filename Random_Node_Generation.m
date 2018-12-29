function Random_Node_Generation(max_val,no_of_nodes,sd,fp)
    rand(sd);
    % rng(sd);
    nodes = round(max_val * rand(no_of_nodes,3));
    nodes(:,1) = 0:(no_of_nodes-1);
    fprintf(fp,'%d\t%d\t%d\n',nodes');
end