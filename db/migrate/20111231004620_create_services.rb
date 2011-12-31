class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :name
      t.string :title
      t.string :permalink
      t.integer :position
      t.boolean :visible, :default => false
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
