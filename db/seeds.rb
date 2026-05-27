# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."

category = [ "chinese", "italian", "japanese", "french", "belgian" ]


10.times do
  Restaurant.create!(name: Faker::Restaurant.name,
                    address: Faker::Address.full_address,
                    category: category.sample,
                    phone_number: Faker::PhoneNumber.cell_phone)
end

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
