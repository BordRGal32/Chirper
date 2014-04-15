class ChirpsController < ApplicationController

  def new
    @chirp = Chirp.new
  end

  def create
    @chirp = Chirp.new(chirp_params)
    if @chirp.save
      current_user.chirps << @chirp
      @chirp.find_chirper
      flash[:notice] = "Chirp Chirpped"
      redirect_to user_path(current_user)
    else
      flash[:notice] = "Chirp Fail...you are Chirpless"
      render 'new'
    end
  end
  def show
    @chirp = Chirp.find(params[:id])
  end
  def destroy
    @chirp = Chirp.find(params[:id])
    @chirp.destroy
    flash[:notice] = "Chirp Destroyed in Chirp Graveyard"
    redirect_to user_path(current_user)
  end

  def chirp_params
  params.require(:chirp).permit(:message)
  end
end
