class MoodsController < ApplicationController

  def index
    @moods = Mood.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @mood = Mood.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.find_by(id: params[:id])
    @mood = Mood.new
    @mood.level = params[:level]

    if @mood.save
      redirect_to "/moods/#{ @mood.id }"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    @mood = Mood.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @mood = Mood.find_by(id: params[:id])
    @mood.level = params[:level]

    if @mood.save
      redirect_to "/moods/#{ @mood.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @mood = Mood.find_by(id: params[:id])
    @mood.destroy


    redirect_to "/moods"
  end
end
