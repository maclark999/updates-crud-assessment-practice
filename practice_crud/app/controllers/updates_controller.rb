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
      redirect_to @update, notice: "Status update a go"
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @update.update_attributes(update_params)
      redirect_to @update, notice: 'Status update a edited'
    else
      render :edit
    end

  end

  def destroy
    if @update.destroy
    redirect_to updates_path, notice: 'Status update was successfully destroyed...forever...there\'s no going back'
    end
  end

  def like
    @update = Update.find(params[:id])
    @like = Update.increment_counter(:number_of_likes, @update)
    @update.save
    redirect_to @update
  end

  private
    def update_params
      params.require(:update).permit(:status, :user, :number_of_likes)
    end

    def set_update
      @update = Update.find(params[:id])
    end

end
