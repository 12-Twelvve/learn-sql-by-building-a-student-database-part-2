sudo cp ./.freeCodeCamp/reset_files/students.sql .

# Commands to set up tutorial
sudo cp ./.freeCodeCamp/.bashrc ..
sudo touch ../pg.log
sudo chmod 777 ../pg.log
sudo touch ../queryResults.log
sudo chmod 777 ../queryResults.log
sudo cp ./.freeCodeCamp/.psqlrc ..
sudo cp ./.freeCodeCamp/postgresql.conf /etc/postgresql/12/main/postgresql.conf
sudo cp ./.freeCodeCamp/pg_hba.conf /etc/postgresql/12/main/pg_hba.conf
sudo chown -R postgres:postgres /var/lib/postgresql/12/main
sudo service postgresql restart
sudo -u postgres psql -c "DROP USER freecodecamp;"
sudo -u postgres psql -c "CREATE USER freecodecamp WITH CREATEDB;"