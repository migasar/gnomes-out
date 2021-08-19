class GnomesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
  #  @gnomes = policy_scope(Gnome)
  #  if params.dig(:search, :category)
  #    if params.dig(:search, :category) == ""
  #      if params.dig(:search, :color) == ""
  #        @gnomes = Gnome.all
  #      else
  #        @gnomes = @gnomes.where(color: params.dig(:search, :color))
  #      end
  #    else
  #      if params.dig(:search, :color) == ""
  #        @gnomes = @gnomes.where(category: params.dig(:search, :category))
  #      else
  #        @gnomes = @gnomes.where(color: params.dig(:search, :color), category: params.dig(:search, :category))
  #      end
  #    end
  #  end

    @gnomes = policy_scope(Gnome)
    @gnomes = @gnomes.where(category: params.dig(:search, :category)) if params.dig(:search, :category) && params.dig(:search, :category) != ""
    @gnomes = @gnomes.where(color: params.dig(:search, :color)) if params.dig(:search, :color) && params.dig(:search, :color) != ""
    @gnomes = @gnomes.where(mood: params.dig(:search, :mood)) if params.dig(:search, :mood) && params.dig(:search, :mood) != ""

    @markers = @gnomes.geocoded.map do |gnome|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @gnome = Gnome.find(params[:id])
    authorize @gnome
    @booking = Booking.new
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

  def edit
    @gnome = Gnome.find(params[:id])
  end

  def update
    @gnome = Gnome.find(params[:id])
    @gnome = Gnome.update(gnomes_params)
    redirect_to gnome_path(@gnome)
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
