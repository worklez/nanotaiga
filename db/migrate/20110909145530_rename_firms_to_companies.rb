class RenameFirmsToCompanies < ActiveRecord::Migration
  def self.up
    rename_table :firm_products, :company_products
    rename_table :firm_profile_atmospheres, :company_profile_atmospheres
    rename_table :firm_profile_connections, :company_profile_connections
    rename_table :firm_profile_names, :company_profile_names
    rename_table :firm_profile_origin_dates, :company_profile_origin_dates
    rename_table :firm_profiles, :company_profiles
    rename_table :firm_profile_sites, :company_profile_sites
    rename_table :firm_profile_subjects, :company_profile_subjects
    rename_table :firm_profile_technologies, :company_profile_technologies
    rename_table :firm_types, :company_types
  end

  def self.down
    rename_table :company_products, :firm_products
    rename_table :company_profile_atmospheres, :firm_profile_atmospheres
    rename_table :company_profile_connections, :firm_profile_connections
    rename_table :company_profile_names, :firm_profile_names
    rename_table :company_profile_origin_dates, :firm_profile_origin_dates
    rename_table :company_profiles, :firm_profiles
    rename_table :company_profile_sites, :firm_profile_sites
    rename_table :company_profile_subjects, :firm_profile_subjects
    rename_table :company_profile_technologies, :firm_profile_technologies
    rename_table :company_types, :firm_types
  end
end
