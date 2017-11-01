
CREATE TABLE email (
	dni               integer REFERENCES person(dni) ON DELETE CASCADE NOT NULL,
	email_address     text PRIMARY KEY,
	use               text CHECK (
	                       use = 'LABORAL'
	                       OR use = 'PERSONAL'
	                       )
);
