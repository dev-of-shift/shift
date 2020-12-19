# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  Worker.create(
    name: "テストメンバー#{n+1}"
  )
end

Place.create([
  {
    name: "梅田"
  },
  {
    name: "難波"
  },
  {
    name: "天王寺"
  }
])
