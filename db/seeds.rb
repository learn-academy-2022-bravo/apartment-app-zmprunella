user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

apartments = [
    {
    street: '3880 San Ramon Dr', 
    city: 'Oceanside', 
    state: 'California',
    manager: 'Bob Smith',
    email: 'bobsmith@hotmail.com',
    price: '$3000',
    bedrooms: 2, 
    bathrooms: 1,
    pets: 'No',
    image: 'https://images1.forrent.com/i2/tb-tHmpjytjE7Kxrc1HHnqm26BNSFIVF5rwMKFAGatA/117/image.jpg',
    },
    {
    street: '3880 San Ramon Dr', 
    city: 'Oceanside', 
    state: 'California',
    manager: 'Bob Smith',
    email: 'bobsmith@hotmail.com',
    price: '$3000',
    bedrooms: 2, 
    bathrooms: 1,
    pets: 'No',
    image: 'https://images1.forrent.com/i2/tb-tHmpjytjE7Kxrc1HHnqm26BNSFIVF5rwMKFAGatA/117/image.jpg',
    }
]

apartments.each do |each_apartment|
    user.apartments.create each_apartment
    puts "creating apartment #{each_apartment}"
end