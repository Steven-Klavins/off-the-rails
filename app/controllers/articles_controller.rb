class ArticlesController < ApplicationController
    def new
    end
    
    def create
    render plain: params[:article].inspect
    @article.save
    redirect_to @article
  end
end


