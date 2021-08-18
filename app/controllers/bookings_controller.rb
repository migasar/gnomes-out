class BookingsController < ApplicationController
  def index
    @bookings = booking.all
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    authorize @booking
    @gnome = Gnome.find(params[:gnome_id])
    @booking = Booking.new
  end

  def create
    @gnome = Gnome.find(params[:gnome_id])
    @booking = Booking.new(booking_params)
    @booking.gnome = @gnome
    @booking.user = current_user
    authorize @booking
    @booking.save!
    #   raise
    #   redirect_to root_path
    # else
    #   raise
    #   redirect_to gnome_path(@gnome)
    # end
  end

  def destroy
    @booking = booking.find(params[:id])
    @gnome = @booking.gnome
    authorize @booking
    @booking.destroy
    redirect_to gnome_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit( :date_start, :date_end, :gnome_id, :user_id )
  end

end
