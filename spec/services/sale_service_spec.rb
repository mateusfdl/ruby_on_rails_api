require 'rails_helper'

RSpec.describe SaleService do
    context '#perform' do
        let(:sale_hash) do
            {
                item_amount: 10,
                item_description: 'some description',
                purchase_count: 100,
                purchaser_name: 'Matheus',
                merchant_name: 'Clooud',
                merchant_address: 'Clooud District'
            }
        end

        it 'must persist sale' do
            expect(described_class.new(sale_hash).perform).to be_truthy
        end
    end
end