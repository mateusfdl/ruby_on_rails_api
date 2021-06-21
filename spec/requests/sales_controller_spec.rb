require 'rails_helper'

RSpec.describe SalesController, type: :request do
    subject { response }

    context '#index' do
        before { get sales_path }
        
        it 'must be ok' do
            expect(response).to have_http_status :ok
        end
    end

    context '#update' do
        it 'must not be routed' do
            expect do
            patch sales_path
            end.to raise_error ActionController::RoutingError
        end
    end

    context '#show' do
        it 'must not be routed' do
            expect do
            delete sales_path
            end.to raise_error ActionController::RoutingError
        end
    end
end