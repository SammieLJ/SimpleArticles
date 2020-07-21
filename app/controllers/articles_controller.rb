class ArticlesController < ApplicationController

    def new
        @article = Article.new
        #@article = Article.new(params.require(:article).permit(:title, :author, :text))
    end
    
    def create
        @article = Article.new(article_params)
        #logger.debug "New article: #{@article.attributes.inspect}"
        #logger.debug "Article should be valid: #{@article.valid?}"

        if @article.save
            logger.debug "The article was saved and now the user is going to be redirected..."
            redirect_to @article
        else
            render 'new'
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        logger.debug "!!! Executing UPDATE... !!!"

        @article = Article.find(params[:id])

        #logger.debug "Update article: #{@article.attributes.inspect}"
        #logger.debug "Article should be valid: #{@article.valid?}"
       
        if @article.update(article_params)
          flash.notice = "Article '#{@article.title}' Updated!"
          redirect_to @article
        else
          render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to articles_path
    end

    private
    def article_params
        params.require(:article).permit(:title, :author,:text)
    end

end
