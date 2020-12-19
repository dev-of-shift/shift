
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
