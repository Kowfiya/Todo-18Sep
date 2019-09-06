# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Action.destroy_all
Task.destroy_all
User.destroy_all
9.times do |i|
    Task.create(
        name: Faker::Book.title,
        photo: "http://lorempixel.com/400/200/food/#{i + 1}/",
        description: Faker::Books::Lovecraft.sentence
    )
end
8.times do |i|
    User.create(
        photo: "http://lorempixel.com/400/200/animals/#{i + 1}/",
        name: "nombre #{i+1}",
        email: "perro#{i+1}@gmail.com",
        password: "1234567",
        password_confirmation: "1234567"
    )
end