class CreateDeviceReceipts < ActiveRecord::Migration
  def self.up
    create_table :device_receipts do |t|
      t.references :claim, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :device_receipts
  end
end
