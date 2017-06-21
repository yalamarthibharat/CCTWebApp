## Company Customer Transaction Web Application

This web application is designed for a software company to maintain customer profile and transaction data. This application is developed using JSP, JDBC and Oracle 12c. This application authenticates the user before providing a catalog of options. Any authenticated user has the capability to insert, delete and retrive data from the database. The database consists of 7 tables created from object types which primarily are:

* Computer - Stores various computer details purchased by customers.
* Customer - Stores customer profile.
* Desktop - Stores monitor type along with the computer details.
* Laptop - Stores weight along with the cmputer details.
* Manufacture - Stores records of microship manufacturers.
* Order - Stores records of orders placed by customers.
* Technical Support - Stores details of the tech assistance provided to the customer.

The following are some of the operations that the application provides to its users:

* Inserting a microchip manufacturer.
* Inserting a laptop/desktop built by a particular microchip manufacturer.
* Inserting a customer who ordered a particular computer.
* Providing technical support to a computer ordered by a particular customer.
* To find all laptops ordered by a particular customer in a particular year.
* Information of all customer(s) who have technical support for a computer using the microchip manufactured by a particular manufacturer.
* To find the names of all customers who ordered a laptop running a particular operating system.
* To find the names of all customers who have bought a desktop that costs more than a particular price.
* Displaying all the software a particular laptop has.
* Deletion of all customers who have not made any order since a particular year.
