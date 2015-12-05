# apidoc-compose

A simple docker-compose script to 


## Usage

A handful of steps are required initially, rather than simply doing docker-compose up

1) Start the db container via `docker-compose up db`. This will create the apidoc db if it does not already exist.
2) Run sem for apidoc from the script folder via `PGPORT=5433 sem-apply --host `docker-machine ip default` --user web --name apidoc`. You probably want to use .pgpass, so as not to require re-entering passwords several times.
3) You can now do `docker-compose up` for the entire system. On OSX, apidoc is probably available at http://192.168.99.100:9000/
