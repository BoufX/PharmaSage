# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying all"

User.create!(email:"bouf@gmail.com", password:"123456")




puts "Seeding pharmacies"
Pharmacy.create(name: "Pharmacie Du Maarif", address: "HAY MOHAMMADI, Casablanca", phone_number: "+212-522-25-01-28")
Pharmacy.create(name: "Pharmacie Universelle", address: "AIN SEBAA, Casablanca", phone_number: "+212-522-25-31-42")
Pharmacy.create(name: "Pharmacie Franceville", address: "SIDI MOUMEN, Casablanca", phone_number: "+212-522-23-04-21")
Pharmacy.create(name: "Pharmacie Acharaf", address: "AIN CHOCK, Casablanca", phone_number:"+212-522-11-21-21")
Pharmacy.create(name: "Pharmacie La Paix", address: "BOURGONE, Casablanca", phone_number:"+212-522-52-11-01")
Pharmacy.create(name: "Pharmacie Maarouf", address: "EL MAARIF, Casablanca", phone_number:"+212-522-41-22-17")
Pharmacy.create(name: "Pharmacie Ghandi", address: "SIDI OTHMANE, Casablanca", phone_number:"+212-522-11-21-21")

puts "Seeding medicnes"
Medicine.create(name: "Rinomicine 400mg", amount:"3")
Medicine.create(name: "Doliprane 100mg", amount:"2")
Medicine.create(name: "Rinomicine 400mg", amount:"3")
Medicine.create(name: "Vitamine C 1000mg", amount:"5")
Medicine.create(name: "Zyrdol 500 mg", amount:"1")

puts "Seeding reviews"
Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "Review: 4/5 ⭐⭐⭐⭐", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.first.id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "Review: 3/5 ⭐⭐⭐", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.first.id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "Review: 5/5 ⭐⭐⭐⭐⭐", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.first.id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "Review: 4/5 ⭐⭐⭐⭐", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(2).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "Review: 3/5 ⭐⭐⭐", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(2).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "Review: 5/5 ⭐⭐⭐⭐⭐", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(2).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "Review: 4/5 ⭐⭐⭐⭐", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(3).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "Review: 3/5 ⭐⭐⭐", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(3).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "Review: 5/5 ⭐⭐⭐⭐⭐", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(3).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "Review: 4/5 ⭐⭐⭐⭐", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(4).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "Review: 3/5 ⭐⭐⭐", post_date: " Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(4).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "Review: 5/5 ⭐⭐⭐⭐⭐", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(4).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "Review: 4/5 ⭐⭐⭐⭐", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(5).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "Review: 3/5 ⭐⭐⭐", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(5).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "Review: 5/5 ⭐⭐⭐⭐⭐", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(5).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "Review: 4/5 ⭐⭐⭐⭐", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(6).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "Review: 3/5 ⭐⭐⭐", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(6).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "Review: 5/5 ⭐⭐⭐⭐⭐", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(6).id )