clear all; close all;
addpath('/home/visesh/Papers/ICCV15/FiducialMallikarjun/figures/export_fig/');

dirs = {...
'./aflw/basic_algorithm';...
'./cofw/app_kmeans_vs_app_pca';...
'./cofw/basic_algorithm';...
'./cofw/hog_vs_sift';...
'./cofw/k_in_knn';...
'./cofw/kmeans_shape_vs_kmeans_pca';...
'./cofw/num_of_exemplars';...
'./cofw/shape_kmeans_vs_shape_pca';...
'./cofw/wo_metric_vs_w_metric';...
'./lfpw/app_kmeans_vs_app_pca';...
'./lfpw/basic_algorithm';...
'./lfpw/hog_vs_sift';...
'./lfpw/k_in_knn';...
'./lfpw/kmeans_shape_vs_kmeans_app';...
'./lfpw/num_of_exemplars';...
'./lfpw/shape_kmeans_vs_shape_pca';...
'./lfpw/wo_metric_vs_w_metric';...
};

num_bars = [5 6 5 6 9 6 9 6 6 6 5 6 9 6 9 6 6];
xt = {'C', 'X', 'I', 'R', 'O1', 'O2', 'O3', 'O4', 'O5'} ;

for i = 1 : length(dirs)
    openfig( sprintf( '%s/fail_rate.fig', dirs{i} ), 'new', 'visible' ) ;
    ax = gca ;
    t = title('') ;
    yl = ylabel('Fraction of Images') ;
    xl = xlabel('Algorithms') ;
    set(ax, 'XTick', 1:num_bars(i)) ;
    set(ax, 'XTickLabel', xt(1:num_bars(i)));
    set(ax, 'linewidth', 3);
    set([t xl yl ax], 'fontname', 'Bitstream Charter');
    set([t xl yl ax], 'fontsize', 18);
    set([t xl yl ax], 'fontweight', 'bold');
    axis([0 num_bars(i)+1 0 1]);
    saveas(gcf, sprintf('%s/fail_rate_modified.fig', dirs{i}), 'fig');
    % set(gcf, 'PaperPositionMode', 'auto');
    %exportfig(gcf, sprintf( '%s/fail_rate_modified.png,dirs{i}'), 'Resolution', 200, 'Color', 'rgb');
    export_fig(sprintf( '%s/fail_rate_modified.jpg',dirs{i}), '-transparent', '-r200', '-jpeg', gcf);
    % hgexport(gcf, sprintf( '%s/fail_rate_modified.png'), hgexport('factorystyle'), 'Format', 'png');
    % print( gcf, sprintf( '%s/fail_rate_modified.png'),'-djpeg', '-r200'); 
    pause(1.0) ;
    close all;

    openfig( sprintf( '%s/mean_err.fig', dirs{i} ), 'new', 'visible' ) ;
    ax = gca ;
    t = title('') ;
    yl = ylabel('Fraction of Interocular Distance') ;
    xl = xlabel('Algorithms') ;
    set(ax, 'XTick', 1:num_bars(i)) ;
    set(ax, 'XTickLabel', xt(1:num_bars(i)));
    set(ax, 'linewidth', 3);
    set([t xl yl ax], 'fontname', 'Bitstream Charter');
    set([t xl yl ax], 'fontsize', 18);
    set([t xl yl ax], 'fontweight', 'bold');
    axis([0 num_bars(i)+1 0 1]);
    saveas(gcf, sprintf('%s/mean_err_modified.fig', dirs{i}), 'fig');
    % set(gcf, 'PaperPositionMode', 'auto');
    %exportfig(gcf, sprintf( '%s/mean_err_modified.png,dirs{i}'), 'Resolution', 200, 'Color', 'rgb');
    export_fig(sprintf( '%s/mean_err_modified.jpg',dirs{i}), '-transparent','-r200', '-jpeg', gcf);
    % hgexport(gcf, sprintf( '%s/mean_err_modified.png'), hgexport('factorystyle'), 'Format', 'png');
    % print( gcf, sprintf( '%s/mean_err_modified.png'),'-djpeg', '-r200'); 
    pause(1.0) ;
    close all;
end
