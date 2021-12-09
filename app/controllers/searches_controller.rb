class SearchesController < ApplicationController
   def search
      @keyword = params[:keyword]
      @range = params[:model]
      @searchs = params[:search]
      
      if @range == "User"
         @users = User.search(@searchs,@keyword)
      else
        @books =Book.search(@searchs,@keyword)
      end
   end
end
