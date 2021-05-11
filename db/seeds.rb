# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


20.times do
   account=Account.create(
      [
         first_name: Faker::Name.first_name ,
         last_name: Faker::Name.last_name,
         username: Faker::Name.unique.name, 
         email: Faker::Internet.email,
         password: "password",
      ]
   )


end

   # Account.create([
   #     { first_name: 'Rahul', last_name: 'william' ,   username: 'rahul' ,email: 'rahul@gmail.com', password: ' password'}, 
   #     { first_name: 'Sita', last_name: 'jhonson' ,   username: 'sita' ,email: 'sita@gmail.com' ,password: ' password'}, 
   #     { first_name: 'Hari', last_name: 'watson' ,   username: 'hari' ,email: 'hari@gmail.com' ,password: 'password '}, 
   #     { first_name: 'Ram', last_name: 'sharma' ,   username: 'ram' ,email: 'ram@gmail.com' ,password: 'password '}, 
   #  ])
