# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all

airports = Airport.create!([
    {
        airport_code: "SFO"
    },
    {
        airport_code: "NYC"
    },
    {
        airport_code: "BUE"
    },
    {
        airport_code: "TYO"
    },
    {
        airport_code: "MEL"
    }])

p "Created #{Airport.count} airports."

Flight.destroy_all

flights = Flight.create([
    {
        departure_airport_id: Airport.find_by(airport_code: "SFO").id,
        arrival_airport_id: Airport.find_by(airport_code: "NYC").id,
        start_time: Time.now,
        duration: 300
    },
    {
        departure_airport_id: Airport.find_by(airport_code: "SFO").id,
        arrival_airport_id: Airport.find_by(airport_code: "MEL").id,
        start_time: Time.now + 5.days,
        duration: 600
    },
    {
        departure_airport_id: Airport.find_by(airport_code: "BUE").id,
        arrival_airport_id: Airport.find_by(airport_code: "TYO").id,
        start_time: Time.now + 10.days,
        duration: 450
    },
    {
        departure_airport_id: Airport.find_by(airport_code: "NYC").id,
        arrival_airport_id: Airport.find_by(airport_code: "BUE").id,
        start_time: Time.now,
        duration: 300
    },
    {
        departure_airport_id: Airport.find_by(airport_code: "TYO").id,
        arrival_airport_id: Airport.find_by(airport_code: "MEL").id,
        start_time: Time.now + 5.days,
        duration: 600
    },
    {
        departure_airport_id: Airport.find_by(airport_code: "BUE").id,
        arrival_airport_id: Airport.find_by(airport_code: "SFO").id,
        start_time: Time.now + 5.days,
        duration: 600
    }])

p "Created #{Flight.count} flights."