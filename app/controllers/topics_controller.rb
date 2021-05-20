class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topics_params)
    if @topic.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topics_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_url
  end

  private
    def topics_params
      params.require(:topic).permit(:title, :description)
    end
  end

