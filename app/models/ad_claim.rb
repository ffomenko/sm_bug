class AdClaim < CppClaim

  state_machine :initial => :device_receipt do

#    command :record_device_receipt, :parent_name => :claim do
#      transition :device_receipt => :replacement_order
#    end
    
    command :record_replacement_order, :parent_name => :claim do
      transition :replacement_order => :claim_charge
    end


  end

end
