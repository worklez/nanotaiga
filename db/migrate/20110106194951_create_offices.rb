class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
      t.string :city
      t.string :address
      t.integer :firm_profile_id

      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
