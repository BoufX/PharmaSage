# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying all"

Pharmacy.destroy_all
Medicine.destroy_all
User.destroy_all

User.create!(email:"bouf@gmail.com", password:"123456")

User.create(email: "sebastien@lewagon.org", nickname: "Sebastien", password: "123456", first_name: "seb", last_name: "tien", admin: true)
User.create(email: "boris@lewagon.org", nickname: "Boris", password: "123456", first_name: "bo", last_name: "ris", admin: true)

puts "Seeding pharmacies"

Pharmacy.create(name: "Pharmacie Du Maarif", address: "HAY MOHAMMADI, Casablanca", phone_number: "+212-522-25-01-28" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie Universelle", address: "AIN SEBAA, Casablanca", phone_number: "+212-522-25-31-42" , user: User.first, status: false)
Pharmacy.create(name: "Pharmacie Franceville", address: "SIDI MOUMEN, Casablanca", phone_number: "+212-522-23-04-21" , user: User.first, status: false)
Pharmacy.create(name: "Pharmacie Acharaf", address: "AIN CHOCK, Casablanca", phone_number: "+212-522-11-21-21" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie Al Akhawayn", address: "AL FIDA, Casablanca", phone_number: "+212-522-52-11-01" , user: User.first, status: false)
Pharmacy.create(name: "Pharmacie Maarouf", address: "EL MAARIF, Casablanca", phone_number: "+212-522-41-22-17" , user: User.first, status: false)
Pharmacy.create(name: "Pharmacie Ghandi", address: "SIDI OTHMANE, Casablanca", phone_number: "+212-522-11-21-21" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie La Paix", address: "BOURGOGNE, Casablanca", phone_number: "+212-547-00-89-11" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie Sidi Al Khadir", address: "HAY HASSANI, Casablanca", phone_number: "+212-500-89-58-10" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie Sadiqi", address: "ANFA, Casablanca", phone_number:"+212-523-07-89-01" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie Paris", address: "AL QUDS, Casablanca", phone_number:"+212-596-25-35-95" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie Bournazel", address: "ENNASSIM, Casablanca", phone_number:"+212-577-02-14-75" , user: User.first, status: false)
Pharmacy.create(name: "Pharmacie Rocroy", address: "HAY EL HANA, Casablanca", phone_number:"+212-511-85-69-47" , user: User.first, status: true)
Pharmacy.create(name: "Pharmacie Essadik", address: "HAY SALAM, Casablanca", phone_number:"+212-541-12-07-78" , user: User.first, status: true)

Chatroom.create(name: "Assistance", pharmacy: Pharmacy.first, user: User.first)


puts "Seeding medicines"
Medicine.create(name: "Aspro", amount:"3")
Medicine.create(name: "Doliprane", amount:"2")
Medicine.create(name: "Rinomicine", amount:"3")
Medicine.create(name: "Vitamine C", amount:"5")
Medicine.create(name: "Zyrdol", amount:"1")
Medicine.create(name: "Delical", amount:"1")


puts "Seeding reviews"
Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.first.id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.first.id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.first.id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.first.id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(2).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(2).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(2).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(2).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(3).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(3).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(3).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(3).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(4).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: " Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(4).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(4).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(4).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(5).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(5).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(5).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(5).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(6).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(6).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(6).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(6).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(7).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(7).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(7).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(7).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(8).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(8).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(8).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(8).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(9).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(9).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(9).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(9).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(10).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(10).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(10).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(10).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(11).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(11).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(11).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(11).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(12).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(12).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(12).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(12).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(13).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(13).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(13).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(13).id )

Review.create!(name: "Oussama", comment: "Always a great experience, super fast service!", rating: "4", post_date: "Reviewed on June 17, 2023", pharmacy_id: Pharmacy.find(14).id)
Review.create!(name: "Abdallah", comment: "Satisfied but they could see some improvements in the future.", rating: "3", post_date: "Reviewed on September 2, 2023", pharmacy_id: Pharmacy.find(14).id )
Review.create!(name: "Oumaima", comment: "Awesome service as always!", rating: "5", post_date: "Reviewed on August 21, 2023", pharmacy_id: Pharmacy.find(14).id )
Review.create!(name: "Soumaya", comment: "Not satisfied...", rating: "2", post_date: "Reviewed on Febuary 06, 2023", pharmacy_id: Pharmacy.find(14).id )


Availability.create!(amount: 3, medicine_id: Medicine.first.id, pharmacy_id: Pharmacy.first.id )
Availability.create!(amount: 3, medicine_id: Medicine.first.id, pharmacy_id: Pharmacy.find(7).id )
Availability.create!(amount: 3, medicine_id: Medicine.first.id, pharmacy_id: Pharmacy.find(9).id )
Availability.create!(amount: 3, medicine_id: Medicine.first.id, pharmacy_id: Pharmacy.find(10).id )
Availability.create!(amount: 3, medicine_id: Medicine.first.id, pharmacy_id: Pharmacy.find(11).id )
Availability.create!(amount: 3, medicine_id: Medicine.first.id, pharmacy_id: Pharmacy.find(13).id )
Availability.create!(amount: 3, medicine_id: Medicine.first.id, pharmacy_id: Pharmacy.find(14).id )



Availability.create!(amount: 2, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(5).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(6).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(7).id )
Availability.create!(amount: 2, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(9).id )
Availability.create!(amount: 2, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(10).id )
Availability.create!(amount: 2, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(12).id )
Availability.create!(amount: 2, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(13).id )
Availability.create!(amount: 2, medicine_id: Medicine.find(2).id, pharmacy_id: Pharmacy.find(14).id )


Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(2).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(4).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(6).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(8).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(11).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(12).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(13).id )
Availability.create!(amount: 4, medicine_id: Medicine.find(3).id, pharmacy_id: Pharmacy.find(14).id )


Availability.create!(amount: 5, medicine_id: Medicine.find(4).id, pharmacy_id: Pharmacy.find(4).id )
Availability.create!(amount: 5, medicine_id: Medicine.find(4).id, pharmacy_id: Pharmacy.find(7).id )
Availability.create!(amount: 5, medicine_id: Medicine.find(4).id, pharmacy_id: Pharmacy.find(9).id )
Availability.create!(amount: 5, medicine_id: Medicine.find(4).id, pharmacy_id: Pharmacy.find(11).id )
Availability.create!(amount: 5, medicine_id: Medicine.find(4).id, pharmacy_id: Pharmacy.find(14).id )


Availability.create!(amount: 1, medicine_id: Medicine.find(5).id, pharmacy_id: Pharmacy.find(3).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(5).id, pharmacy_id: Pharmacy.find(5).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(5).id, pharmacy_id: Pharmacy.find(7).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(5).id, pharmacy_id: Pharmacy.find(9).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(5).id, pharmacy_id: Pharmacy.find(12).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(5).id, pharmacy_id: Pharmacy.find(13).id )

Availability.create!(amount: 1, medicine_id: Medicine.find(6).id, pharmacy_id: Pharmacy.find(6).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(6).id, pharmacy_id: Pharmacy.find(8).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(6).id, pharmacy_id: Pharmacy.find(11).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(6).id, pharmacy_id: Pharmacy.find(12).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(6).id, pharmacy_id: Pharmacy.find(13).id )
Availability.create!(amount: 1, medicine_id: Medicine.find(6).id, pharmacy_id: Pharmacy.find(14).id )

# Availability.create!(amount: 6, medicine_id: Medicine.find(5), pharmacy_id: Pharmacy.find(6).id )
