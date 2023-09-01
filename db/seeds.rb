# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Pharmacy.destroy_all
Medicine.destroy_all
User.destroy_all
User.create!(email:"bouf@gmail.com", password:"123456")

Pharmacy.create(name: "Pharmacie Du Maarif", address: "382 Bd Brahim Roudani, Casablanca, Morocco", phone_number: "+212-522-25-01-28")
Pharmacy.create(name: "Pharmacie Universelle", address: "398 Bd Brahim Roudani, Casablanca, Morocco", phone_number: "+212-522-25-31-42")
Pharmacy.create(name: "Pharmacie Franceville", address: "Hay Inara I 16 rue 13, Casablanca, Morocco", phone_number: "+212-522-23-04-21")
Pharmacy.create(name: "Pharmacie Les Arènes", address: "5 Rue Jalal Eddine Sayouti, Casablanca, Morocco", phone_number:"+212-522-36-28-24")


Medicine.create(name: "Rinomicine 400mg", amount:"3")
Medicine.create(name: "Doliprane 100mg", amount:"2")
Medicine.create(name: "Rinomicine 400mg", amount:"3")
Medicine.create(name: "Vitamine C 1000mg", amount:"5")
Medicine.create(name: "Zyrdol 500 mg", amount:"1")
