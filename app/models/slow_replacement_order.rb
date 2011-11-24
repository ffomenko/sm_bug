class SlowReplacementOrder < ReplacementOrder

  state_machine :initial => :claim_asset_product do

    command :record_replacement_product, :parent_name => :order do
      transition :claim_asset_product => :complete
    end

  end

end