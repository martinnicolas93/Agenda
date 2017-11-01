
CREATE TABLE person (
	dni               integer PRIMARY KEY,
	surname           text NOT NULL,
	first_name        text NOT NULL,
	birthday          timestamp with time zone,
	nationality       text,
	civil_state       text CHECK (
	                       civil_state = 'SOLTERO' 
	                       OR civil_state = 'CASADO'
	                       OR civil_state = 'DIVORCIADO'
	                       OR civil_state = 'VIUDO'
	                  )
);

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

CREATE TABLE phone (
	dni               integer REFERENCES person(dni) NOT NULL,
	phone_number      text NOT NULL,
	phone_type        text CHECK (
	                       phone_type = 'MOVIL'
	                       OR phone_type = 'FIJO'
	                  ),
	use               text CHECK (
	                       use = 'PERSONAL'
	                       OR use = 'LABORAL'
	                  )
	PRIMARY KEY (dni, phone_number)
);

CREATE TABLE email (
	dni               integer REFERENCES person(dni) ON DELETE CASCADE NOT NULL,
	email_address     text PRIMARY KEY,
	use               text CHECK (
	                       use = 'LABORAL'
	                       OR use = 'PERSONAL'
	                       )
);
