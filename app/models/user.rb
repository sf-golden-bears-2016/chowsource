class User < ApplicationRecord
  has_many :menus
  has_many :menu_recipes, through: :menus
  has_many :recipes
  has_many :recipes, through: :loves
  has_many :loves

  validates :name, :email, presence: true
end
