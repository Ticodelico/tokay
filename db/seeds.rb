# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(title: 'Nintendo Switch', description: 'Es capaz de leer copias con otro software', price: 240)
Product.create(title: 'Macbookair', description: 'Tiene la bateria mala', price: 130)
Product.create(title: 'PS4',description: 'le falla el lector de blueray', price: 95)
Product.create(title: :'iPhone 11 seminuevo', description: 'Esta en perfecto estado.Comprado en 2022', price: 200)