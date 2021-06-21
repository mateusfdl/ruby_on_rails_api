class SaleService
    
    def initialize(attributes_hash = {})
        @attributes_hash = attributes_hash
    end

    def perform
        Sale.new(
            item_amount: item_amount.to_i,
            item_description: item_description,
            purchase_count: purchase_count.to_i,
            purchaser_name: purchaser_name,
            merchant_name: merchant_name,
            merchant_address: merchant_address
        ).save!
    end

    attr_reader :attributes_hash

    private

    def item_amount
        attributes_hash[:item_amount]
    end
    
    def purchase_count
        attributes_hash[:purchase_count]
    end

    def item_description
        attributes_hash[:item_description]
    end

    def purchaser_name
        attributes_hash[:purchase_name]
    end

    def merchant_name
        attributes_hash[:merchant_name]
    end

    def merchant_address
        attributes_hash[:merchant_address]
    end
end