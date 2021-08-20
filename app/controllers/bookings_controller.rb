class BookingsController < ApplicationController
  def index
    @bookings = booking.all
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    @gnome = Gnome.find(params[:gnome_id])
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
    @number_days = (@booking.date_end - @booking.date_start).to_i + 1
    @booking.price_total= @number_days * @gnome.price
    authorize @booking
    if @booking.save
      redirect_to  gnome_booking_path(@gnome, @booking)
    else
      redirect_to  gnome_booking_path(@gnome, @booking)
    end
  end

  def validate
    @booking = Booking.find(params[:id])
    @booking.update(validated: true)
    flash[:notice] = 'Votre réservation a bien été validée.'
    skip_authorization
    redirect_to root_path
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
