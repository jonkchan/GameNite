# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jon = User.create({ username: 'jonC', email: "jc@gmail.com", password: "test", collection: ["Catan", "Splendor"] })
justine = User.create({ username: 'justinec', email: 'justine@gmail.com', password: "test", collection: ["Avalon"] })
# jon.collection << "Catan"
# jon.collection << "Splendor"
# jon.save