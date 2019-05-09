# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative "../lib/level.rb"

l1 = Level.create
l2 = Level.create
l3 = Level.create
l4 = Level.create
l5 = Level.create
l6 = Level.create
l7 = Level.create
l8 = Level.create

b1 = Boss.create(name:"Ham", level: l1, experience: 20, health: 100)
b2 = Boss.create(name:"Sam", level: l1, experience: 20, health: 100)
b3 = Boss.create(name:"Blam", level: l1, experience: 20, health: 100)
b4 = Boss.create(name:"Glam", level: l1, experience: 20, health: 100)
b5 = Boss.create(name:"Wham!", level: l1, experience: 20, health: 100)
b6 = Boss.create(name:"Jon", level: l2, experience: 100, health: 100)
b7 = Boss.create(name:"Dany", level: l3, experience: 100, health: 100)
b8 = Boss.create(name:"Night Kang", level: l4, experience: 100, health: 100)
