class QuickReplacementOrder < ReplacementOrder
  
  state_machine :initial => :claim_asset_product do

    command :record_replacement_product, :parent_name => :order do
      transition :claim_asset_product => :complete
    end

    after_transition :on => :record_replacement_product do |replacement_order|
      replacement_order.claim.record_replacement_order
    end

  end

end