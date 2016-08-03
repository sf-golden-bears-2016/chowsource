class User < ApplicationRecord
  has_many :menus
  has_many :menu_items, through: :menu
  has_many :user_menu_items, through: :menu_items, source: :recipes
  has_many :recipes
  has_many :recipes, through: :loves
  has_many :loves
end
