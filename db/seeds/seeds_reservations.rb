@reservations = [
    {
        starting_day: "2021-10-20",
        finish_day: "2021-10-25",
        city: "New York",
        user_id: 1,
        jet_id: 1,
    },
    {
        starting_day: "2021-10-21",
        finish_day: "2021-10-26",
        city: "Moscow",
        user_id: 2,
        jet_id: 2,
    },
    {
        starting_day: "2021-10-22",
        finish_day: "2021-10-27",
        city: "London",
        user_id: 2,
        jet_id: 3,
    },
    {
        starting_day: "2021-10-23",
        finish_day: "2021-10-28",
        city: "Paris",
        user_id: 1,
        jet_id: 3,
    }
]

@reservations.each do |reservation|
    Reservation.create(reservation)
end