class MenuRecipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  belongs_to :featured_recipes, :class_name => "Recipe", :foreign_key => "recipe_id"
end
