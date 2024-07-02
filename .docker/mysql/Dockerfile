# Builds an Image from Docker MySQL Official Repository https://hub.docker.com/_/mysql
FROM mysql:5.7

# Set the USERNAME for MySQL connection
# As a DEV environment is possible to set a HardCoded user
# If you need to deplou the application to a Production server
# You must set the username and password into a Environment Variable (.env)
# As default, MySQL Password is also root
USER root

# Giving Writing permissions to the /var/lib/mysql
# This directory is where the MySQL writes its data files
RUN chmod 755 /var/lib/mysql

# There's a folder in this same directory called "initdb". This folder keeps the Initializing Database
# installer with .SQL scripts. It will create our Database and will also create our table