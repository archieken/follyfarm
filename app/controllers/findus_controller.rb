class FindusController < ApplicationController


     def update
    @findus = Findu.last

      if @findus.update(findus_params)
          redirect_to root_path
      else
          redirect_to root_path
      end

    end

        private

   def findus_params
     params.require(:findu).permit(:content)
   end
end
