addpath(genpath('BCT'))
% Normalize weighted matrix
load('mean_matrix.mat')

norm_matrix = weight_conversion(mean_matrix, 'normalize');

betweenness_wei = betweenness_wei(norm_matrix);

clustering_coef = clustering_coef_wu(norm_matrix);

degrees = degrees_und(norm_matrix);

density = density_und(norm_matrix);

diffusion_efficiency = diffusion_efficiency(norm_matrix);

distance = distance_wei(norm_matrix);

edge_betweenness = edge_betweenness_wei(norm_matrix);

eigenvector_centrality = eigenvector_centrality_und(norm_matrix);

local_assortativity = local_assortativity_wu_sign(norm_matrix);

rich_club = rich_club_wu(norm_matrix);

strengths = strengths_und(norm_matrix);

transitivity = transitivity_wu(norm_matrix);






