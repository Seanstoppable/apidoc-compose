CREATE EXTENSION dblink;

DO
$do$
BEGIN

IF EXISTS (SELECT 1 FROM pg_database WHERE datname = 'apidoc') THEN
   RAISE NOTICE 'Database already exists'; 
ELSE
   PERFORM dblink_exec('dbname=' || current_database()  -- current db
                     , 'CREATE DATABASE apidoc');
END IF;

END
$do$;

GRANT ALL ON DATABASE apidoc TO web;
