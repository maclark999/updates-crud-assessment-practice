class UpdatesController < ApplicationController
before_action :set_update, only: [:show, :edit, :update, :destroy]
  def index
    @updates = Update.all
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to @update
    else
      render :new
    end
  end

  def show
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def update_params
      params.require(:update).permit(:status, :user, :number_of_likes)
    end

    def set_update
      @update = Update.find(params[:id])
    end

end
