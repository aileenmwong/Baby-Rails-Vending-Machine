# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'create a drink'
#Kind Table
salty = Kind.create!(snack_type: 'salty')
sweet = Kind.create!(snack_type: 'sweet')
drink = Kind.create!(snack_type: 'drink')

#Vending Table
Vending.create!(snack: 'Cheetos', code: 'A1', price: '$1.00', kind_id: salty.id)
Vending.create!(snack: 'Flaming Hot Cheetos', code: 'A2', price: '$1.00', kind_id: salty.id)
Vending.create!(snack: 'Ding Dongs', code: 'A3', price: '$2.00', kind_id: sweet.id)
Vending.create!(snack: 'Ho-Hos', code: 'A4', price: '$2.00', kind_id: sweet.id)
Vending.create!(snack: 'Sun Chips', code: 'A5', price: '$1.00', kind_id: salty.id)
Vending.create!(snack: 'Pretzels', code: 'B1', price: '$1.50', kind_id: salty.id)
Vending.create!(snack: 'Gummy Bears', code: 'B2', price: '$2.00', kind_id: sweet.id)
Vending.create!(snack: 'M&Ms', code: 'B3', price: '$2.00', kind_id: sweet.id)
Vending.create!(snack: 'Peanut M&Ms', code: 'B4', price: '$2.00', kind_id: sweet.id)
Vending.create!(snack: 'Water', code: 'B5', price: '$2.50', kind_id: drink.id)
Vending.create!(snack: 'Coca-Cola', code: 'C1', price: '$10.00', kind_id: drink.id)
Vending.create!(snack: 'Diet Coca-Cola', code: 'C2', price: '$10.00', kind_id: drink.id)


