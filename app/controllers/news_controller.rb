class NewsController < ApplicationController


   def update
    @news = News.last

      if @news.update(news_params)
         redirect_to root_path
      else
          redirect_to root_path
      end
    end

  private

   def news_params
     params.require(:news).permit(:content)

   end

end
