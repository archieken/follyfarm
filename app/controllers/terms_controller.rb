class TermsController < ApplicationController


    def update

    @term = Term.last

      if @term.update(term_params)
             redirect_to root_path
      else
          redirect_to root_path
      end

    end

  private

   def term_params
     params.require(:term).permit(:content)
   end


end
