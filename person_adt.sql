
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
