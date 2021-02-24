# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Gear.destroy_all
User.destroy_all

User.create!(email: "a@a.a", password: "123456")
User.create!(email: "b@b.b", password: "123456")
User.create!(email: "c@c.c", password: "123456")

pairs = {
  "biking" => ["Moutain Bike", "Helmet", "Twin Bike", "Pedals With clips", "Compressor", "Trail Building Tools"],
  "hiking" => ["Hiking Watch", "Ropes", "Crampons", "Backpack", "Camel Back"],
  "scuba" => ["Tank", "Fins", "Boat", "Mask", "Spear Gun", "Dry Suit"], 
  "skiing" => ["Skis", "Helmet", "Poles", "Goggles", "Ski Boots"]
}

puts "Creating Gears..."

User.all.each do |user|
  pairs.each do |category, name_array|
    name_array.each do |name|
      Gear.create!(
        name: name,
        description: "Rent my #{category} #{name}, It rocks! :)",
        price: Faker::Number.decimal(l_digits: 2).to_s,
        category: category,
        user: user
      )
    end
  end
end

User.create!(email: "demo@demo.demo", password: "123456")


