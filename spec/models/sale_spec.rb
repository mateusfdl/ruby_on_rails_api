require 'rails_helper'

RSpec.describe Sale, type: :model do
    let(:sale_attributes) do
        {
            item_amount: 10,
            item_description: 'some description',
            purchase_count: 100,
            purchaser_name: 'Matheus',
            merchant_name: 'Clooud',
            merchant_address: 'Clooud District'
        }
    end

    it 'must persist' do
        expect(Sale.new(sale_attributes).save!).to be_truthy
    end
end