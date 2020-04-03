# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
park = Park.create(name: "Fun Land",
                   admissions: 20.00)
mechanic1 = Mechanic.create(name: "Bob McBob",
                           experience: 5)

park.rides.create(name: "Slide of DOOOM",
                  rating: 2,
                  mechanic_id: mechanic1.id)
park.rides.create(name: "Maze of Corn",
                  rating: 10,
                  mechanic_id: mechanic1.id)
park.rides.create(name: "The Upside Down",
                  rating: 6,
                  mechanic_id: mechanic1.id)
mechanic2 = Mechanic.create(name: "Jane Doe",
                           experience: 5)
