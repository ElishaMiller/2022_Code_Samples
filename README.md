# 2021_Code_Samples
Code Samples for two Coding Problems Related to an Application for Software Developer at Liberty University

Code Problem 1:
Write a simple Java or C# program that draws ASCII shapes
  a. It should take at least these inputs, but it could take more. It should be almost impossible to crash the program through bad input.
    i. Which shape to draw – the choices should include triangle, square, and diamond.
    ii. Height of the shape
    iii. Text label to display
      1. Choosing the label should be optional for the user.
      2. Default: “LU”
    iv. Row on which to display text label
      1. Choosing the label row should be optional for the user.
      2. Default: 4
    v. The option to repeat at the end.
  b. A sample run might go something like this:
  c. Possible Bonus Tasks:
    i. Allow multiple text labels on multiple different lines.
    ii. Add more options for shapes. (square, circle, rectangle, smiley face , etc.) 

My Code:
For this Code Problem, I created a basic Java Script which relies upon the creation and use of java functions in order to perform key elements of the program's operations. In particular, there is a separate function used for printing each shape (triangle, square, and diamond) as well as an individual function used to check if the user is finished with their input. These functions are utilized to help keep the code within the main function as simple as it can be and allows the code to be easily readable and understood in the event that any problems arise over time. The code also contains mechanisms to check for invalid input and responds by prompting for a new input in these circumstance. All requirements outlined in the Problem have been met within the code design and all test runs have provided successful and accurate output.

Note: To access the java program, open the zip file, and enter the "src" file. Within this file, navigate to ShapePrint. Within ShapePrint, open ShapeBuilder.java. This program was created within the coding program Eclipse.

Code Problem 2:
Design a brand new database that would store information about people. The
expected number of people to be stored in this database is over 1,000,000.
You need to store the following information:
  a. SSN
  b. Name
  c. Birth date
  d. Ethnicity
  e. US Address Info (needs to store several: home, work, etc.)
  f. Phone Info (needs to store several: home, work, etc.)
  g. Donation Type (Cash, Check, Credit Card, etc)
  h. DonationDate
  i. DonationAmount
  j. DonationMemo
Note: A single person may have zero, one, or several donations; but each
donation has only one Type, Date, Amount, and Memo.
Bonus: write the SQL to create these tables in Oracle or MS SQL Server.

My Code:
My response to this Code Problem can be found in two documents. The first is an ER Diagram that visually displays the Database design whereas the second is an SQL Query with code that creates each Database table and inserts sample values that help display what the Database will look like when produced. The Database is designed with a total of eight tables:
  Donor: A table that stores the name, birthdate, social security number, and ethnicity of an individual.
  DonationType: A table that stores information about the type of Donation, that is, whether the donation was paid in Cash, Check, or Credit Card
  Donation: A table that stores the date of the donation, amount of the donation, a memo related to the donation, and foreign key ids that reference both the Donor and   DonationType tables.
  PhoneType: A table that stores the type of phone number, that is, whether the phone number is a home or work phone number.
  Phone: A table that stores phone numbers as well as foreign keys that reference the PhoneType and Donor tables.
  AddressType: A table that stores the type of address, that is, whether the address is a work or home address.
  ZipCodes: A table that stores the zipcode, city, and two letter abreviation for the relevant state.
  Addresses: A table that stores the street address as well as foreign keys that reference the ZipCodes, AddressType, and Donor tables.
The way in which these tables are related to each other is outlined in the relevant ER Diagram, with foreign keys indicated by an (fk) appended to the end for clarification. This method of indication foreign keys was selected due to the limits of the program utilized, which did not have a method for denoting foreign keys.

Finally, I inserted sample information to display the way the database appears when completed, as a means of demonstrating the accuracy or effectiveness of the SQL code. All the SQL code is on a single Query in order to make the creation of the database more simple, but space is incerted between each segment if separation of the code is desired. In addition, the sample information provided is purposefully arranged to provide multiple entries in the necessary tables to help display the relationship of the data in compliance with the specifications (i.e. multiple phone numbers, donations, and addresses for each donor) but no join statements are presented due to the variety of possible types of join statements that could be produced.

I herby submit each of these programs and code segments and attest that I designed each one on my own, based on my own knowledge and understanding of the programs utilized. I look forward to hearing any feedback on these codes and hope to hear from you soon.
