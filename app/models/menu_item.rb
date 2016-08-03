class MenuItem < ApplicationRecord
  belongs_to :menu
  belongs_to :recipe
  belongs_to :user, through: :menu
end
