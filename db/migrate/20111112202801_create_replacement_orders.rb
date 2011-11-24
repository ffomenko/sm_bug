class CreateReplacementOrders < ActiveRecord::Migration
  def self.up
    create_table :replacement_orders do |t|
      t.string :reference
      t.references :claim, :polymorphic => true
      t.string :type
      t.string :state
      t.timestamps
    end
  end

  def self.down
    drop_table :replacement_orders
  end
end
