--View all schedules with route details

SELECT 
    s.schedule_id,
    r.origin,
    r.destination,
    b.bus_number,
    s.departure_time,
    s.arrival_time,
    s.travel_date,
    s.price
FROM schedules s
JOIN routes r ON s.route_id = r.route_id
JOIN buses b ON s.bus_id = b.bus_id
ORDER BY s.travel_date, s.departure_time;


--View All Bookings with Passenger and Trip Info

SELECT 
    t.ticket_id,
    p.first_name,
    p.last_name,
    r.origin,
    r.destination,
    s.travel_date,
    s.departure_time,
    t.seat_number,
    t.status
FROM tickets t
JOIN passengers p ON t.passenger_id = p.passenger_id
JOIN schedules s ON t.schedule_id = s.schedule_id
JOIN routes r ON s.route_id = r.route_id;


--Count Available Seats for a Specific Schedule

SELECT 
    s.schedule_id,
    b.capacity,
    COUNT(t.ticket_id) AS seats_booked,
    (b.capacity - COUNT(t.ticket_id)) AS seats_available
FROM schedules s
JOIN buses b ON s.bus_id = b.bus_id
LEFT JOIN tickets t ON s.schedule_id = t.schedule_id
WHERE s.schedule_id = 1
GROUP BY s.schedule_id, b.capacity;


--Find All Tickets for a Specific Passenger

SELECT 
    p.first_name,
    p.last_name,
    r.origin,
    r.destination,
    s.travel_date,
    t.seat_number,
    s.price
FROM tickets t
JOIN passengers p ON t.passenger_id = p.passenger_id
JOIN schedules s ON t.schedule_id = s.schedule_id
JOIN routes r ON s.route_id = r.route_id
WHERE p.passenger_id = 1;


