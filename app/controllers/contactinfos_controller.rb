class ContactsController < ApplicationController

   def update
    @contact = Contactinfo.last
    @contact.update(contact_params)
  end


    private

   def contact_params
     params.require(:contactinfo).permit(:contents)
   end


end
