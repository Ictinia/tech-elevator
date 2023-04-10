BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved)
VALUES ('The Root Beer Stand', 'food', ' The Root Beer Stand, the wonderful eatery that signifies summer in Greater Cincinnati, opened as an A & W Root Beer Stand in 1957. Since then, Cincinnati Magazine has named it as the best place to quaff a root beer in town and ranked "The Stand" in the number 12 slot among the "Top 100 Places in Cincinnati."', '(513) 769-4349', '11566 Reading Rd, Sharonville, OH 45241', 0, 0, true);

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), 'Monday', '11:00:00', '20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), 'Tuesday', '11:00:00', '20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), 'Wednesday', '11:00:00', '20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), 'Thursday', '11:00:00', '20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), 'Friday', '11:00:00', '20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), 'Saturday', '11:00:00', '20:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'The Root Beer Stand'), 'Sunday', '11:00:00', '20:00:00', false, false);


INSERT INTO landmarks (name, category, description, phone, address, thumbs_up, thumbs_down, approved)
VALUES ('Boca', 'food', 'Boca has been recognized as one of the top French Restaurants in the United States by Travel and Leisure Magazine as well as Open Table’s Top 100 Restaurants in the United States.', '(513) 542-2022', '114 E 6th St, Cincinnati, OH 45202', 0, 0, true);

INSERT INTO operating_hrs (landmark_id, day_of_week, opening_time, closing_time, closed, varies)
VALUES ((SELECT landmark_id FROM landmarks WHERE name = 'Boca'), 'Monday', '16:00:00', '22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'), 'Tuesday', '16:00:00', '22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'), 'Wednesday', '16:00:00', '22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'), 'Thursday', '16:00:00', '22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'), 'Friday', '16:00:00', '22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'), 'Saturday', '16:00:00', '22:00:00', false, false),
((SELECT landmark_id FROM landmarks WHERE name = 'Boca'), 'Sunday', '16:00:00', '22:00:00', false, false);


COMMIT TRANSACTION;
