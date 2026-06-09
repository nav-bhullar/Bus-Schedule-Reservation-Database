-- Routes
INSERT INTO routes VALUES (1, 'New York', 'Boston', 350);
INSERT INTO routes VALUES (2, 'New York', 'Philadelphia', 150);
INSERT INTO routes VALUES (3, 'Boston', 'Washington DC', 700);

-- Buses
INSERT INTO buses VALUES (1, 'BUS-101', 40);
INSERT INTO buses VALUES (2, 'BUS-102', 35);
INSERT INTO buses VALUES (3, 'BUS-103', 40);

-- Schedules
INSERT INTO schedules VALUES (1, 1, 1, '08:00', '12:30', '2026-06-15', 45.00);
INSERT INTO schedules VALUES (2, 1, 2, '14:00', '18:30', '2026-06-15', 45.00);
INSERT INTO schedules VALUES (3, 2, 3, '09:00', '11:30', '2026-06-15', 25.00);
INSERT INTO schedules VALUES (4, 3, 1, '07:00', '15:00', '2026-06-16', 75.00);

-- Passengers
INSERT INTO passengers VALUES (1, 'John', 'Smith', 'john.smith@email.com', '555-0101');
INSERT INTO passengers VALUES (2, 'Sarah', 'Johnson', 'sarah.j@email.com', '555-0102');
INSERT INTO passengers VALUES (3, 'Mike', 'Williams', 'mike.w@email.com', '555-0103');

-- Tickets (reservations)
INSERT INTO tickets VALUES (1, 1, 1, 5, '2026-06-10', 'confirmed');
INSERT INTO tickets VALUES (2, 1, 2, 6, '2026-06-10', 'confirmed');
INSERT INTO tickets VALUES (3, 3, 3, 12, '2026-06-11', 'confirmed');
INSERT INTO tickets VALUES (4, 4, 1, 1, '2026-06-12', 'confirmed');
