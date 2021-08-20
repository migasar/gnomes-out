class ReviewsController < ApplicationController
  def index
    @reviews = policy_scope(Review)
  end

  def new
    @gnome = Gnome.find(params[:gnome_id])
    @user = current_user
    @review = Review.new
    authorize @review
    skip_authorization
  end

  def create
    @gnome = Gnome.find(params[:gnome_id])
    @user = current_user
    @review = Review.new(reviews_params)
    authorize @review
    @review.gnome = @gnome
    @review.user = @user
    @review.save
    redirect_to gnome_path(@gnome)
  end

  def destroy
    @review = Review.find(params[:id])
    authorize @review
    @review.destroy
    redirect_to gnome_path(@gnome)
  end

  private

  def reviews_params
    params.require(:review).permit(:comment, :rating, :gnome_id)
  end
end
