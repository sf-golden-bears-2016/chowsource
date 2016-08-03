class Menu < ApplicationRecord
  belongs_to :user
  has_many :menu_items
  has_many :recipes, through: :menu_items
end
