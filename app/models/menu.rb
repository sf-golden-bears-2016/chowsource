class Menu < ApplicationRecord
  belongs_to :user
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes
end
