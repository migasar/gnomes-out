class GnomesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @gnomes = Gnome.all
    authorize @gnomes
  end

  def show
    @gnome = Gnome.find(params[:id])
    authorize @gnomes
  end

  def new
    @gnome = Gnome.new
  end

  def my_gnomes
    authorize @gnomes
    @gnomes = Gnome.where(user: current_user)
  end

  def create
    @user = User.find(params[:user_id])
    authorize @gnomes
    @gnome = Gnome.new(gnomes_params)
    @gnome.user = @user
    @gnome.save
    redirect_to my_gnomes_gnomes_path
  end

  def destroy
    authorize @gnomes
    @gnome = Gnome.find(params[:id])
    @gnome.destroy
    redirect_to user_path
  end

    private

  def gnomes_params
    params.require(:gnome).permit(:name, :photo, :size, :weight, :state, :category, :gender, :mood, :outsider, :traveler, :available, :price, :color, :user_id )
  end
end
