# ApplicantsWebApp
A small web app for viewing a database of applicants for a job.

## Running the Application

You will need to install a web server, a MySQL database management system and a server-side scripting language to run the application. The recommendation is Apache Tomcat with phpMyAdmin.

### Database Setup

The database `applicants.sql.zip` is provided in the `WebContent\resources` directory. Import the database into phpMyAdmin, or your MySQL database management system.

You should configure the `url` string in the `WebContent\data.jsp` file to include your MySQL server host name and port number. If you are running the application locally, this is likely to remain as `localhost` but ensure that you change the `8889` port number to your specified port number for jdbc:mysql://localhost:8889/applicants
