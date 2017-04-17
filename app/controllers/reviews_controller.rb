class ReviewsController < ApplicationController

  def create
    @review_params = params[:review]
    review = Review.new(
      product_id: @_params[:product_id],
      user_email: current_user.email,
      description: @review_params["description"],
      rating: @review_params["rating"])


  if review.save
      redirect_to :back
    else
      flash[:notice] = "Error creating review"
      redirect_to :back
    end
  end

  def destroy
    console
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to :back
  end

end