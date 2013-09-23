class TweetsController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :new]

  def new
    @tweet = Tweet.new
  end

  def create
    if @tweet = Tweet.create(body: params[:tweet][:body], user_id: current_user.id )
      redirect_to tweets_path
    else
      render :new
    end
  end

  def index
    @tweets = Tweet.order('created_at DESC')
  end
end
