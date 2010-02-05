require 'magento'
require 'abstract'

module Magento
  class ProductTier < Abstract
    
    def initialize(attributes = {})
      super(attributes)
      connect
    end
    
    def self.find(*args)
      connect
      tiers = @connection.call("product_tier_price.info", args)
      
      tier_list = []
      tiers.each do |tier|
        tier_list.push(ProductTier.new(tier))
      end
      tier_list
    end
    
    def self.update(*args)      
      ret = @connection.call("product_tier_price.update", args)
    end 
  end
  
  class ProductTierException < StandardError
  end
end