Product.create!(name: "tra", price: "35000", quantity: "3",category_id: "2")

20.times do |n|
  name  = Faker::Name.name
  Product.create!(name: name, price: "10000", quantity: "100", category_id: "1" )
end

