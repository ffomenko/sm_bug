class LtClaim < CppClaim

  state_machine :initial => :replacement_order do

    command :record_replacement_order, :parent_name => :claim do
      transition :replacement_order => :claim_charge
    end

  end

end
