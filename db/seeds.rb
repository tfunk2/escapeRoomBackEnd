# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tyler = User.create(username: "dev_tyler", password: "password")

Game.create(user: tyler, seconds_to_complete: 30, total_misses: 2)
Game.create(user: tyler, seconds_to_complete: 20, total_misses: 1)
Game.create(user: tyler, seconds_to_complete: 40, total_misses: 3)