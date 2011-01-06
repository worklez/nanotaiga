class CreateOfficeBonus < ActiveRecord::Migration
  def self.up
    create_table :office_bonus do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :office_bonus
  end
end
