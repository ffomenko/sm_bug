class CreateReplacementProducts < ActiveRecord::Migration
  def self.up
    create_table :replacement_products do |t|
      t.references :order, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :replacement_products
  end
end
