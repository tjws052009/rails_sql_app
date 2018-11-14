# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  idx = i + 1
  User.create({username: "user#{idx}", user_info_attributes: {first_name: "First#{idx}", last_name: "Last#{idx}"}})

  Inventory.create({serial_number: "serial#{idx}", name: "mydev#{idx}", device_type: idx % 2 == 0 ? "PC" : "Mobile", user_id: ((i % 4) + 1) })
end