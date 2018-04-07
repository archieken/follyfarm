class PricesController < ApplicationController


    def update

    @price = Price.last

      if @price.update(price_params)
             redirect_to root_path
      else
          redirect_to root_path
      end

    end

  private

   def price_params
     params.require(:price).permit(:content)
   end



end
