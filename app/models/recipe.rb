class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :user, through: :love
  belongs_to :recipe_menu, through: :menu, source: :user
  has_many   :menu_items
  has_many   :menus, through: :menu_items
  has_many   :loves
end
