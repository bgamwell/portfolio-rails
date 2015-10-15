class PostsController < ApplicationController

  before_filter :authorize, only: [:new, :create, :edit, :update, :destroy]

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).order(date_published: :desc)
    else
      @posts = Post.all.order(date_published: :desc)
    end
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to root_path
      end
  end

  def show
    id = params[:id]
    @post = Post.find(id)
    render :show
  end

  def edit
    id = params[:id]
    @post = Post.find(id)
  end

  def update
    @post = Post.find(params[:id])

    # get updated data
    updated_attributes = params.require(:post).permit(:title, :author, :date_published, :URL, :synopsis, :image, :source, :tag_list)
    # update the creature
    @post.update_attributes(updated_attributes)

    #redirect to root path
    redirect_to root_path
  end

  def destroy
    id = params[:id]
    post = Post.find(id)
    post.destroy
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :author, :date_published, :URL, :synopsis, :image, :source, :tag_list)
    end

end
