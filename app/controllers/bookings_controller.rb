class BookingsController < ApplicationController
  def index
    @bookings = booking.all
    authorize @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @bookings
  end

  def new
    authorize @bookings
    @gnome = Gnome.find(params[:gnome_id])
    @booking = Booking.new
  end

  def create
    @gnome = Gnome.find(params[:gnome_id])
    @booking = Booking.new(booking_params)
    @booking.gnome = @gnome
    if @booking.save
      redirect_to gnome_bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = booking.find(params[:id])
    @gnome = @booking.gnome
    @booking.destroy
    redirect_to gnome_bookings_path
  end



  private

  def booking_params
    params.require(:booking).permit( :date_start, :date_end, :gnome_id, :user_id )
  end

end
