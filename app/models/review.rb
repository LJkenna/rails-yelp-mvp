class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
  validates :rating, numericality: { greater_than: -1 }

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant
    else
      redirect_to new_review
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
