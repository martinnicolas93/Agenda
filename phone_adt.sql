
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
