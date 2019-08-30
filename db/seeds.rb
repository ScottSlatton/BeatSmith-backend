# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


l1 = Level.create
l2 = Level.create
l3 = Level.create
l4 = Level.create
l5 = Level.create
l6 = Level.create
l7 = Level.create
l8 = Level.create

b1 = Monster.create(name:"Bat", level: l1, armor: 2, damage: 2, experience: 20, health: 100)
b2 = Monster.create(name:"Slime", level: l1, armor: 2, damage: 4, experience: 10, health: 100)
b3 = Monster.create(name:"Steve", level: l1, armor: 4, damage: 3, experience: 10, health: 100)
b4 = Monster.create(name:"Spider", level: l1, experience: 20, damage: 2, health: 100)
b5 = Monster.create(name:"Rabid Dog", level: l1, damage: 4, experience: 10, health: 100)
b6 = Monster.create(name:"Zombie", level: l2, armor: 20, damage: 20, experience: 20, health: 200)
b7 = Monster.create(name:"Ghoul", level: l2, armor: 20, damage: 25, experience: 20, health: 200)
b8 = Monster.create(name:"Spider-Monkey", level: l2, damage: 30, armor: 20, experience: 20, health: 200)
b9 = Monster.create(name:"Skeleboi", level: l2, armor: 20, damage: 25, experience: 20, health: 200)
b10 = Monster.create(name:"Cultist", level: l2, armor: 20, damage: 20, experience: 20, health: 200)
b11 = Monster.create(name:"Ork", level: l3, armor: 40, damage: 60, experience: 30, health: 400)
b12 = Monster.create(name:"Wight", level: l4, armor: 50, damage: 65, experience: 40, health: 1000)
b13 = Monster.create(name:"Troll", level: l4, armor: 50, damage: 60, experience: 40, health: 600)
b14 = Monster.create(name:"Ogre", level: l4, armor: 50, damage: 65, experience: 40, health: 700)
b14 = Monster.create(name:"Soldier", level: l5, armor: 50, damage: 80, experience: 50, health: 1000)
b14 = Monster.create(name:"WereBeast", level: l5, armor: 50, damage: 100, experience: 50, health: 1200)
