class CreateCppClaims < ActiveRecord::Migration
  def self.up
    create_table :cpp_claims do |t|
      t.string :reference
      t.string :state
      t.string :type
      t.timestamps
    end
  end

  def self.down
    drop_table :cpp_claims
  end
end
