class TopicsController < ApplicationController
  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    logged_in?(:admin) ? all_blogs : published_blogs
  end

  private

  def published_blogs
    @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
  end

  def all_blogs
    @blogs = @topic.blogs.recent.page(params[:page]).per(5)
  end
end
