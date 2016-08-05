class Recipe < ApplicationRecord
  belongs_to :user
  has_many   :menu_recipes
  has_many   :loves

  validates :name, :prep_time, :cook_time, :ingredients, :price, :description, :directions, :servings, :course, presence: true
end
