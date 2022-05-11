Restaurant.destroy_all

chik = Restaurant.create(name: "Chikara Sushi Train", cuisine: "Japanese")
sams = Restaurant.create(name: "Sam's Health Foods", cuisine: "Vegan")

chik.foods.create(name: "Sushi and Sashimi platter", description: "A selection of salmon, tuna and prawn sushi and sashimi", price: 22.00)
sams.foods.create(name: "Eggplant Parma", description: "Crumbed eggplant steak, topped with tomato paste and vegan cheese", price: 15.00)
