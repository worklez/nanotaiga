class CreateFirmProfileSubjects < ActiveRecord::Migration
  def self.up
    create_table :firm_profile_subjects do |t|
      t.text :subject
      t.references :firm_profile

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_profile_subjects
  end
end
