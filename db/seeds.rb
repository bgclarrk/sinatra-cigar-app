brian = User.create(first_name: "Brian", last_name: "Clark", email: "bgc@live.com", username: "bgclarrk", password_digest: "password")
jenn = User.create(first_name: "Jenn", last_name: "Mullin", email: "jrm@gmail.com", username: "jrmullin", password_digest: "password")

black_label = Cigar.create(name: "Black Label", length: 5, guage: 54, country: "NIC", filler: "NIC", wrapper: "COR/NIC", color: "Colorado", strength: "Full")
blue_label = Cigar.create(name: "Blue Label", length: 7, guage: 50, country: "USA", filler: "NIC", wrapper: "COR/NIC", color: "Colorado Maduro", strength: "Full")
el_centurion = Cigar.create(name: "El Ceturion", length: 5.5, guage: 52, country: "NIC", filler: "COR/CRI/NIC", wrapper: "COR/NIC", color: "Colorado Maduro", strength: "Medium-Full")

Review.create(title: "Very good stick", content: "This is one of my favorite cigars for a even burn and great taste", rating: "9", cigar_id: black_label.id, user_id: brian.id)
Review.create(title: "Amazing!", content: "My first time trying and it was perfect", rating: "10", cigar_id: blue_label.id, user_id: jenn.id)
Review.create(title: "Not for my taste", content: "I was really looking for something with a more full strength", rating: "7", cigar_id: el_centurion.id, user_id: brian.id)
