
CREATE TABLE postal_address (
	dni               integer REFERENCES person(dni) ON DELETE CASCADE NOT NULL,
	street_address    text NOT NULL,
	zipcode           text NOT NULL,
	city              text NOT NULL,
	province          text DEFAULT 'BUENOS AIRES',
	use               text CHECK (
                               use = 'PERSONAL'
                               OR use = 'LABORAL'
                           ) NOT NULL,
	PRIMARY KEY (dni, street_address, zipcode)
);
