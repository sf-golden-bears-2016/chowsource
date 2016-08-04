require 'faker'

20.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    token: "jakshdashaiusnd",
    pic: "http://www.freegreatpicture.com/kitty/kitten-play-1217",
    uid: "asdhjkashdk"
    )
end

10.times do
  Menu.create(
    user_id: rand(1..20)
    )
end

50.times do
  Recipe.create(
    name: "Satay Chicken Pizza",
    prep_time: rand(5..45),
    cook_time: rand(10..45),
    ingredients: "1 tablespoon vegetable oil \n 2 skinless, boneless chicken breast halves, chopped \n dough \n cheese",
    price: rand(5..45),
    description: "This recipe was developed in response to hunger, a creative impulse, and a lack of other food in the house. It's great. Really.",
    directions: "Heat oil in a skillet over high heat.\n Saute chicken pieces in hot oil for 6 to 7 minutes. \n Do not overcook!
Preheat oven to 425 degrees F (220 degrees C).
To Assemble Pizza: Spoon 1/4 of peanut sauce onto each pita. Sprinkle 1/4 of the browned chicken and 1/4 of the scallions on top of each. Top each 'pizza' with 1 slice cheese. Place on a lightly greased cookie sheet and bake in the preheated oven for 10 to 12 minutes, until the cheese is melted and bubbly. Let stand for 1 to 2 minutes outside of oven before you cut with a pizza cutter.",
    servings: rand(1..5),
    course: ["breakfast", "lunch", "dinner", "snacks"].sample,
    image: "http://allrecipes.com/recipe/9021/satay-chicken-pizza/photos/259144/",
    user_id: rand(1..20))
end

30.times do
  MenuRecipe.create(
    menu_id: rand(1..20),
    recipe_id: rand(1..50)
    )
end

100.times do
  Love.create(
    user_id: rand(1..20),
    recipe_id: rand(1..50)
    )
end
