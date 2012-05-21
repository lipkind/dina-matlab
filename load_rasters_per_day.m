% this script

% loads rasters for one day and syllable type, created by the function alignmentmst_sylltypecluster_allrenditions_start

feature_list={'amplitude', 'time', 'cluster', 'pitch', 'entropy', 'FM', 'mean_frequency'};
for n=1:length(feature_list)
    feature=feature_list{n};
rdir=pwd;
rasdir=['G:\matlab_work\raster_files\' database_name '\' sylltypename '_14\' feature ];
cd(rasdir)
load(['raster_' database_name '_day' num2str(day) '_' sylltypename '_14_' feature ]);
cd(rdir)
eval(['raster_' feature '=raster_day' num2str(day) '_' sylltypename '_14_' feature ';']);
clear(['raster_day' num2str(day) '_' sylltypename '_14_' feature ]);
end
raster_time=time_data_correction_in_raster(raster_time);
