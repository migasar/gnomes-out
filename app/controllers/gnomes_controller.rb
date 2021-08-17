class GnomesController < ApplicationController
  def index
    @gnomes = Gnome.all
  end

  def show
    @gnome = Gnome.find(params[:id])
  end

  def new
    @gnome = Gnome.new
  end

  def create
    @gnome = Gnome.new(gnomes_params)
    @gnome.save

  end

    private

  def gnomes_params
    params.require(:gnome).permit(:name, :photo, :size, :weight, :state, :category, :gender, :mood, :outsider, :traveler, :available, :price, :color, :user_id )
  end
end
