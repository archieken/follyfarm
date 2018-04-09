class ContactinfosController < ApplicationController

   def update
    @contact = Contactinfo.last
      if @contact.update(contact_params)
             redirect_to root_path
      else
          redirect_to root_path
      end
  end


    private

   def contact_params
     params.require(:contactinfo).permit(:content)
   end


end
