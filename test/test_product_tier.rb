require 'test_helper'
class ProductTierTest < Test::Unit::TestCase
  
  # ===Prerequisites
  # * shop config available
  # * shop has product with product id 1
  # * At least on product tier exists
  def test_find
    tiers = Magento::ProductTier.find(1)
    
    # puts tiers.first.class    
    # puts tiers.first.inspect
    assert_instance_of(Array, tiers)
    assert(tiers.size > 0)
    
    first_tier = tiers.first
    
    assert_not_nil(first_tier.qty)
    assert_not_nil(first_tier.price)
    assert_not_nil(first_tier.website)
    assert_not_nil(first_tier.customer_group_id)
  end
  
  def test_update
    #Magento::ProductTier.update
  end  
end