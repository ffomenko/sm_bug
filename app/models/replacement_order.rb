class ReplacementOrder < ActiveRecord::Base
  belongs_to :claim, :polymorphic => true

  state_machine :initial => :claim_asset_product do

    command :record_replacement_product, :parent_name => :order do
      transition :claim_asset_product => :complete
    end

  end
m 
end
