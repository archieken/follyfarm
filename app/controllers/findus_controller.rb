class FindusController < ApplicationController


     def update
    @findus = Findu.last

    @findus.update(findus_params)

    end

        private

   def findus_params
     params.require(:findu).permit(:content)
   end
end
