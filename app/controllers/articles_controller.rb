class ArticlesController < ApplicationController
    def index 
        @article = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
    end

    def create
        # render plain: params[:article].inspect      -> response only show
        @article = Article.new (article_params)   # -> Article in Model(article.rb)

        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    private 
    def article_params 
        params.require(:article).permit(:title, :text)
    end
end
