Restaurant.destroy_all

admin = Role.create(name: "vendor")
vendor = Role.create(name: "vendor")
customer = Role.create(name: "vendor")

admin.users.create(email: "admin@gmail.com", password: "password")

chik = Restaurant.create(name: "Chikara Sushi Train", cuisine: "Japanese")
sams = Restaurant.create(name: "Sam's Health Foods", cuisine: "Vegan")
quin = Restaurant.create(name: "The Quinoa Queens", cuisine: "Health")

chik.foods.create(name: "Sushi and Sashimi platter", description: "A selection of salmon, tuna and prawn sushi and sashimi", price: 22.00)
sams.foods.create(name: "Eggplant Parma", description: "Crumbed eggplant steak, topped with tomato paste and vegan cheese", price: 15.00)
quin.foods.create(name: "Acai Bowl", description: "Made from acai berries and topped with additional fruits, nuts, seeds, and granola", price: 12.00)
