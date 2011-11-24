require 'test_helper'

class ReplacementOrderTest < ActiveSupport::TestCase
  test "record_order" do
    claim = LtClaim.new(:state => :replacement_order)
    order = SlowReplacementOrder.new(:claim => claim)
    order.record_replacement_product
    assert_equal "complete", order.state
    assert_equal "claim_charge", claim.state
  end
end
