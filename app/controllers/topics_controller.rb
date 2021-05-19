class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topics_params)
    @topic.save
    redirect_to root_url
  end

  private
    def topics_params
      params.require(:topic).permit(:title, :description)
    end


end
