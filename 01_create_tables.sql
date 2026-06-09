-- Create the database tables

CREATE TABLE routes (
    route_id INT PRIMARY KEY,
    origin VARCHAR(50) NOT NULL,
    destination VARCHAR(50) NOT NULL,
    distance_km INT
);

CREATE TABLE buses (
    bus_id INT PRIMARY KEY,
    bus_number VARCHAR(10) NOT NULL,
    capacity INT NOT NULL
);

CREATE TABLE schedules (
    schedule_id INT PRIMARY KEY,
    route_id INT NOT NULL,
    bus_id INT NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL,
    travel_date DATE NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (route_id) REFERENCES routes(route_id),
    FOREIGN KEY (bus_id) REFERENCES buses(bus_id)
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    schedule_id INT NOT NULL,
    passenger_id INT NOT NULL,
    seat_number INT NOT NULL,
    booking_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'confirmed',
    FOREIGN KEY (schedule_id) REFERENCES schedules(schedule_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);
