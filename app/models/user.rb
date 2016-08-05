class User < ApplicationRecord
  has_many :recipes
  has_many :loves
  has_many :menu_recipes

  has_many :featured_recipes, through: :menu_recipes, :class_name => 'Recipe', :foreign_key => "recipe_id"
  has_many :favorite_recipes, through: :loves, :class_name => 'Recipe', :foreign_key => "recipe_id"

  validates :name, :email, presence: true
end
