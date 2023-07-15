# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
Flight.delete_all

airports = Airport.create([
    { code: "BDL" },
    { code: "BCN" },
    { code: "BNE" },
    { code: "FRA" },
    { code: "MEX" },
    { code: "GRU" }
])

bdl = Airport.find_by code: "BDL"
bcn = Airport.find_by code: "BCN"
bne = Airport.find_by code: "BNE"
fra = Airport.find_by code: "FRA"
mex = Airport.find_by code: "MEX"
gru = Airport.find_by code: "GRU"

flights = Flight.create([{
    departure_airport_id: bdl.id,
    arrival_airport_id: bcn.id,
    start_time: Time.now.next_month,
    duration: "8 hours 24 minutes"
},
{
    departure_airport_id: bcn.id,
    arrival_airport_id: fra.id,
    start_time: Time.now.next_month(2),
    duration: "3 hours 18 minutes"
},
{
    departure_airport_id: mex.id,
    arrival_airport_id: gru.id,
    start_time: Time.now.next_month,
    duration: "5 hours 4 minutes"
},
{
    departure_airport_id: bcn.id,
    arrival_airport_id: bdl.id,
    start_time: Time.now.next_month(2),
    duration: "8 hours 24 minutes"
},
{
    departure_airport_id: fra.id,
    arrival_airport_id: bcn.id,
    start_time: Time.now.next_month(3),
    duration: "3 hours 18 minutes"
},
{
    departure_airport_id: bdl.id,
    arrival_airport_id: bne.id,
    start_time: Time.now.next_day,
    duration: "26 hours"
},
{
    departure_airport_id: bne.id,
    arrival_airport_id: bdl.id,
    start_time: Time.now.next_day(14),
    duration: "26 hours"
},
{
    departure_airport_id: gru.id,
    arrival_airport_id: bcn.id,
    start_time: Time.now.next_month,
    duration: "16 hours 38 minutes"
},
{
    departure_airport_id: mex.id,
    arrival_airport_id: bdl.id,
    start_time: Time.now.next_day,
    duration: "8 hours 43 minutes"
}
])