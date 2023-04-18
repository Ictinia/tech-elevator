BEGIN TRANSACTION;

DROP TABLE IF EXISTS stops;
DROP TABLE IF EXISTS itineraries;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS operating_hrs;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS landmarks;



CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)


);

CREATE TABLE landmarks (
	landmark_id SERIAL PRIMARY KEY,
	name varchar(100) NOT NULL,
	category varchar(100) NOT NULL,
	description varchar(1000) NOT NULL,
	phone varchar(14),
	address varchar(100),
	thumbs_up INT NOT NULL,
	thumbs_down INT NOT NULL,
	approved boolean NOT NULL,
	hero_img varchar(1000) NOT NULL,
	latitude numeric(9,7),
	longitude numeric (10,7),
	map_link varchar(1000)
);

CREATE TABLE itineraries (
	itinerary_id SERIAL PRIMARY KEY,
	user_id INT NOT NULL,
	name varchar(100) NOT NULL,
	date DATE NOT NULL,
	
	CONSTRAINT fk_itineraries_users FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE stops (
	stop_id SERIAL PRIMARY KEY,
	itin_id INT NOT NULL,
	landmark_id INT NOT NULL,

	CONSTRAINT fk_stops_itineraries FOREIGN KEY (itin_id) REFERENCES itineraries(itinerary_id),
	CONSTRAINT fk_stops_landmark FOREIGN KEY (landmark_id) REFERENCES landmarks(landmark_id)		
);

CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	landmark_id INT NOT NULL,
	user_id INT NOT NULL,
	title varchar(100) NOT NULL,
	description varchar(1000) NOT NULL,
	
	CONSTRAINT fk_reviews_users FOREIGN KEY (user_id) REFERENCES users(user_id),
	CONSTRAINT fk_reviews_landmarks FOREIGN KEY (landmark_id) REFERENCES landmarks(landmark_id)
);

CREATE TABLE operating_hrs (
	id SERIAL PRIMARY KEY,
	landmark_id INT NOT NULL,
	day_of_week varchar(9) NOT NULL,
	opening_time TIME,
	closing_time TIME,
	closed BOOLEAN,
	varies BOOLEAN,
	
	CONSTRAINT fk_operating_hrs_landmarks FOREIGN KEY (landmark_id) REFERENCES landmarks(landmark_id)
);

COMMIT;
