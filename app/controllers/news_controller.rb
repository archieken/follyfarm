class NewsController < ApplicationController


   def update
    @news = News.last

    @news.update(news_params)

    end

  private

   def news_params
     params.require(:news).permit(:contents)
   end

end
