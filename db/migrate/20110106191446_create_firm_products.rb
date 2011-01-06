class CreateFirmProducts < ActiveRecord::Migration
  def self.up
    create_table :firm_products do |t|
      t.string :name
      t.string :site
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :firm_products
  end
end
