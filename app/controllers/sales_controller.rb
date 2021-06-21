class SalesController < ApplicationController
    def index
        @sales = Sale.all
    end

    def import_sales
        if file
            parsed_data.lines do |line|
                purchaser_name, item_description, item_amount, purchase_count, merchant_address, merchant_name = line

                SaleService.new(
                    purchase_name: purchaser_name,
                    item_description: item_description,
                    item_amount: item_amount,
                    purchase_count: purchase_count,
                    merchant_address: merchant_address,
                    merchant_name: merchant_name
                ).perform
            end

            flash[:success] = "Data imported successfuly!"
            return true
        end

        flash[:success] = "You need provide some data!"
    end

    private

    def file
        params[:file]
    end

    def file_path
        file.path
    end

    def data
        Parser::ReadData.new(file_path).read
    end

    def parsed_data
        Parser::ParserData.new(data)
    end
end
