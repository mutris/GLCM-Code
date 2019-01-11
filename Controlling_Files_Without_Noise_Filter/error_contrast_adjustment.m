function [g_matrix] = error_contrast_adjustment(matrix_adj)

look_in = 50:64;
matrix_adj(1,look_in) = 0;
matrix_adj(1,look_in) = 0;

g_matrix = matrix_adj;

end