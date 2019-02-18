# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([( name: 'Star Wars' ), ( name: 'Lord of the Rings' )])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(
  first_name: "Anne",
  last_name: "Onimous",
  email: "anne.onimous@mailinator.com",
  phone_number: "555-123-4567",
  address: "1234 Street st",
  password: "password"
  )

Gear.create!(
  user: user,
  name: 'Hiking Shoes',
  category: 'Shoes',
  price: '150',
  size: '10',
  description: 'These hiking shoes are great for trekking the great outdoors. They allow water vapour to escape while keeping mud and water out.'
  )

# Gear.create(
#   name: '4-Person Tent',
#   category: 'Tents',
#   price: '200',
#   size: '4-person',
#   description: 'Never feel lonely with this 4 person tent. Material is super easy to step up, but strong enough and durable enough to handle even the biggest of hurricanes'
# )
# Gear.create(
#   name: '1-Person Tent',
#   category: 'Tents',
#   price: '200',
#   size: '1-person',
#   description: 'Want solitude during your nights rest? Enjoy this one person tent, with super-durable and waterproof material'
# )
# Gear.create(
#   name: 'Headlamp',
#   category: 'Headlamps',
#   price: '60',
#   description: "It's always good to have extra light with new technology. 4 different modes to help you set the right lighting. Red Flood Light is good to use the washroom or read without waking anyone else up. 1 Button control. MicroCharging USB allows you to charge on the go. Powerbank not included"
# )
# Gear.create!(
#   name: 'Slider Tumbler',
#   category: 'Water Bottles',
#   price: '40',
#   description: 'Always keep your water or other drinks safe in your bottle and not on the group with this Tublr, complete with double-walled vacuum insulation to keep your coffee hot, spill-resistant design and clear-lid which helps you see when you need a refill.'
# )
