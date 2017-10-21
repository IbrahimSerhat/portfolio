class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
  layout 'blog'
  access user: [:index, :show], admin: :all

  # GET /blogs
  # GET /blogs.json
  def index
    @page_title = 'My blog, my articles | You lucky because You can see my articles'
    logged_in?(:admin) ? all_blogs : published_blogs
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    if logged_in?(:admin) || @blog.published?
      @blog = Blog.includes(:comments).friendly.find(params[:id])
      @comment = Comment.new
    else
      redirect_to blogs_path, notice: 'You are not authorized to access this page'
    end
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Your post is live now.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_status
    if @blog.published?
      @blog.draft!
    else
      @blog.published!
    end
    redirect_to blogs_path, notice: 'Post status has been updated.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.friendly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def blog_params
    params.require(:blog).permit(:title, :body, :topic_id, :user_id)
  end

  def published_blogs
    @blogs = Blog.published.recent.page(params[:page]).per(5)
  end

  def all_blogs
    @blogs = Blog.recent.page(params[:page]).per(5)
  end
end
