require 'rails_helper'
require 'byebug'
RSpec.describe Parser::ParserData do
    let(:data) { ["some\tdescription\there"] }
    let(:parsed_data) { ["some", "description", "here"]}

    context '#lines' do
        it 'must parse line' do
            described_class.new(data).lines do |line|
                expect(line).to eq(parsed_data)
            end
        end
    end 
end