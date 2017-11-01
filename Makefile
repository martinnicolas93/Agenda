all: agenda.sql

agenda.sql: person_adt.sql postal_address_adt.sql phone_adt.sql email_adt.sql
	touch agenda.sql
	cat person_adt.sql >> agenda.sql
	cat postal_address_adt.sql >> agenda.sql
	cat phone_adt.sql >> agenda.sql
	cat email_adt.sql >> agenda.sql
	
clean:
	$(RM) agenda.sql
	
