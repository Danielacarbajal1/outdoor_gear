# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([( name: 'Star Wars' ), ( name: 'Lord of the Rings' )])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  password: Faker::Internet.password(10, 20)
  )

Gear.create!(
  user: user,
  name: 'Hiking Shoes',
  category: 'hiking',
  price: '150',
  size: 'L',
  description: 'These hiking shoes are great for trekking the great outdoors. They allow water vapour to escape while keeping mud and water out.'
  )

Gear.create(
  user: user,
  name: '4-Person Tent',
  category: 'hiking',
  price: '200',
  size: 'L',
  description: 'Never feel lonely with this 4 person tent. Material is super easy to step up, but strong enough and durable enough to handle even the biggest of hurricanes'
)

Gear.create(
  user: user,
  name: '1-Person Tent',
  category: 'hiking',
  price: '100',
  size: 'S',
  description: 'Want solitude during your nights rest? Enjoy this one person tent, with super-durable and waterproof material'
)

Gear.create(
  user: user,
  name: 'Headlamp',
  category: 'hiking',
  price: '60',
  size: 'M',
  description: "It's always good to have extra light with new technology. 4 different modes to help you set the right lighting. Red Flood Light is good to use the washroom or read without waking anyone else up. 1 Button control. MicroCharging USB allows you to charge on the go. Powerbank not included"
)
Gear.create!(
  user: user,
  name: 'Slider Tumbler',
  category: 'hiking',
  price: '40',
  size: 'M',
  description: 'Always keep your water or other drinks safe in your bottle and not on the group with this tumbler, complete with double-walled vacuum insulation to keep your coffee hot, spill-resistant design and clear-lid which helps you see when you need a refill.'
)
