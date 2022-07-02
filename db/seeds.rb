# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all
Flight.destroy_all

airports = Airport.create!([
    {
        airport_code: "SFO"
    },
    {
        airport_code: "NYC"
    }])

p "Created #{Airport.count} airports."

flights = Flight.create([
    {
        departure_airport_id: 1
        arrival_airport_id: 2
        start: Time.now
    }])