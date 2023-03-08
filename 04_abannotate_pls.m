sources_table = abannotate_get_sources;

parcellated_data_path = '/home/marvin/mount/hdd8tb/CSI_UKB/2023_mets_combined_cohorts_continuous/output/pls/pls_ukb_bootstrap_schaefer100_df.csv'
parcellated_data = csvread(parcellated_data_path);

opt.n_nulls = 1000;
opt.atlas = 'Schaefer'
opt.phenotype_data = parcellated_data;
opt.GCEA.correlation_method = 'Spearman'

% Cell type analysis

opt.analysis_name = 'CellTypes'; % name for analysis
opt.dir_result = '/home/marvin/mount/hdd8tb/CSI_UKB/2023_mets_combined_cohorts_continuous/output/abannotate/';
opt.GCEA.dataset = 'PsychEncode-cellTypesTPM-discrete'; % selected GCEA dataset

cTable_cell_types_pls = ABAnnotate(opt);

