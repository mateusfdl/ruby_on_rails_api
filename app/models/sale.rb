class Sale < ApplicationRecord

    scope :total_sales, -> { Sale.count }

    def self.total_sales_amount
        Sale.all.sum{ _1.total_sale_amount }
    end

    def total_sale_amount
        item_amount * purchase_count
    end
end
