class AboutsController < ApplicationController


    def update

    @price = About.last

      if @about.update(about_params)
             redirect_to root_path
      else
          redirect_to root_path
      end

    end

  private

   def about_params
     params.require(:about).permit(:content)
   end


end
