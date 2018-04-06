class PricesController < ApplicationController


     def update
    @price = Price.last

    @price.update(price_params)

    end

  private

   def price_params
     params.require(:price).permit(:contents)
   end



end
