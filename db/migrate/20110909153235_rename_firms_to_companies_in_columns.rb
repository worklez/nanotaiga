class RenameFirmsToCompaniesInColumns < ActiveRecord::Migration
  def self.up
    rename_column :company_products, :firm_profile_id, :company_profile_id
    rename_column :company_profile_atmospheres, :firm_profile_id, :company_profile_id
    rename_column :company_profile_connections, :source_firm_id, :source_company_id
    rename_column :company_profile_connections, :target_firm_id, :target_company_id
    rename_column :company_profile_names, :firm_profile_id, :company_profile_id
    rename_column :company_profile_origin_dates, :firm_profile_id, :company_profile_id
    rename_column :company_profile_sites, :firm_profile_id, :company_profile_id
    rename_column :company_profile_subjects, :firm_profile_id, :company_profile_id
    rename_column :company_profile_technologies, :firm_profile_id, :company_profile_id
    rename_table :firm_profiles_firm_types, :company_profiles_company_types
    rename_column :company_profiles_company_types, :firm_profile_id, :company_profile_id
    rename_column :company_profiles_company_types, :firm_type_id, :company_type_id
    rename_column :methodologies, :firm_profile_id, :company_profile_id
    rename_column :offices, :firm_profile_id, :company_profile_id
    rename_column :posts, :firm_profile_id, :company_profile_id
  end

  def self.down
    rename_column :company_products, :company_profile_id, :firm_profile_id
    rename_column :company_profile_atmospheres, :company_profile_id, :firm_profile_id
    rename_column :company_profile_connections, :source_company_id, :source_firm_id
    rename_column :company_profile_connections, :target_company_id, :target_firm_id
    rename_column :company_profile_names, :company_profile_id, :firm_profile_id
    rename_column :company_profile_origin_dates, :company_profile_id, :firm_profile_id
    rename_column :company_profile_sites, :company_profile_id, :firm_profile_id
    rename_column :company_profile_subjects, :company_profile_id, :firm_profile_id
    rename_column :company_profile_technologies, :company_profile_id, :firm_profile_id
    rename_table :company_profiles_company_types, :firm_profiles_firm_types
    rename_column :company_profiles_company_types, :company_profile_id, :firm_profile_id
    rename_column :company_profiles_company_types, :company_type_id, :firm_type_id
    rename_column :methodologies, :company_profile_id, :firm_profile_id
    rename_column :offices, :company_profile_id, :firm_profile_id
    rename_column :posts, :company_profile_id, :firm_profile_id
  end
end
