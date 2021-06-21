require 'rails_helper'

RSpec.describe Parser::ReadData do
    let(:path) { "#{Rails.root}/spec/lib/parser/data/test_data.txt" }

    it 'must not include first line' do
        expect(described_class.new(path).read).not_to include 'first_line'
    end
end