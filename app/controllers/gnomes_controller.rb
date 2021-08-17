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

 t.string "name"
    t.float "size"
    t.float "weight"
    t.string "state"
    t.string "category"
    t.string "gender"
    t.string "mood"
    t.boolean "outsider"
    t.boolean "traveler"
    t.boolean "available"
    t.float "price"
    t.string "color"
    t.bigint "user_id", null: false
