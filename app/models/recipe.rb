class Recipe < ApplicationRecord
  belongs_to :user
  # belongs_to :user, through: :love
  has_many   :menu_recipes
  has_many   :menus, through: :menu_recipes
  has_many   :loves

  validates :name, :prep_time, :cook_time, :ingredients, :price, :description, :directions, :servings, :course, presence: true
end
