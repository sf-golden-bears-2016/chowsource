require 'faker'

20.times do
  User.create(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: '123'
    )
end

10.times do
  Menu.create(
    user_id: rand(1..20)
    )
end

50.times do
  Recipe.create(
    name: Faker::SlackEmoji.food_and_drink,
    prep_time: rand(5..45),
    cook_time: rand(10..45),
    ingredients: "1 apple, 2 bananas, 3 oranges",
    price: rand(5..45),
    description: "this is the description for this amazing recipe",
    directions: "these are the directions to this amazing recipe",
    servings: rand(1..5),
    course: ["breakfast", "lunch", "dinner", "snacks"].sample,
    image: "This is an Image",
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
