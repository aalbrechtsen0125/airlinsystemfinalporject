# airlinsystemfinalproject_integration_testing

This system utilizes an SQl database in order to store all user inputs regarding flights, bookings, users, and customer information. THus, the integration testing that needs to be performed is to determine if the database is properly communicating with the source code as the code runs and recieves input from the interface. In order to do this, the system software required is XAMPP. The installer dmg file for this software is 150 mb, so it could not be uploaded to this website. This software will need to be installed in order to run the database. The php admin file will also need to be installed, so that XAMPP may run SQL's and be able to interpret the language. The airline sql is also provide as it can be imported into XAMPP to be able to update automatically with the code. 

The sql connector is also added in this branch as it must be downloaded and added to the user library, and the user lirbary must be added to the classpath configuration of the code. Then in all .java files the statement:

"Connection con;
    PreparedStatement pst;"

This statement allows for the connection of the database to the program. Then all actions that are being completed within the system required the statement:

"Class.forName("com.mysql.cj.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost/airline","root","");
            pst = con.prepareStatement() "

The last line of the above code includes a statement of what is being communicated in the database. This is how all java files established a connection with the database to successfully integrate.
