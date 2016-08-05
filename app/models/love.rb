class Love < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  belongs_to :favorite_recipes, :class_name => "Recipe", :foreign_key => "recipe_id"
end
