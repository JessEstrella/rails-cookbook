class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :comment, lenght: { minimum: 6 }
  validates :recipe_id, uniqueness: { scope: :category_id, message: "has already been added to this category" }
end
