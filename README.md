# Disaster-Management-Web-application

In light of the recent floods in KZN The NGO "Siza Bantu" is looking for an system which can be used:

- By the Fieldworkers to capture flood victim personal data (ID number/Passport number & address) and the victim's needs.
- To be able to update the victim details when the victims needs have been met 
- Allow the deletion victim data from system.
- The system should also provide a search functionality for non-workers to search for family members, friends ect. on the system.

How the web application works:

- The first page the "default.aspx" functions as the Home page ,upon loading it will read information from the database and display
  a report in the labels about the number of victims recorded ,and the total number of needs they have in terms of: clothing, food parcels,
  and housing.

- The first page contains two button named "Login" and "Search for Victim" ,Login button is for Fieldworkers which allows them to access a page called
  the "LoginPage" which will allow them to add, update and delete victim data. The Search button in the Home page is meant
  for an external user to allow them to search for their loved one's.

  SEARCH PAGE

- The search page can be used by the fieldworkers and external users to search for victims in the systems database.
- When the page loads the gridview will be populated with the victims data using the database.
- It will be required that the user enters a Name and Surname of the user he/she wishes to search before pressing the "search" button.
- When the user presses the "search" button the gridview displayed data will be filtered to show if there is a victim with set name but if the user doesn't exist
  the gridview will display nothing.
- The "Reset button" will restore the default data back into the gridview and clear current input in textboxes.

  LOGIN PAGE

- It will require the Fieldworker to enter their name and worker ID before allowing them to selecting a button to either "Add Victim" ,"Update Victim Details",
  "Delete Victim".  
- When the User selects "Add Victim" Button it will redirect them to the "AddPage.aspx" which will be used to a add victim.
- When the User selects "Update Victim Details" button it will redirect them to the "UpdatePage.aspx" which will be used to a update victim needs.
- We will store the fieldworker name and ID in a Session to be used in the latter pages.

  ADD PAGE

- This page will allow the user to enter the details of the victim (ID number, Name, Surname, Clothing, Food, Housing, and also select the date of admission using the calender.
- Store the info in a cookie to be used later.
- Once the "Add" button is select it will direct the user to the confirmation page "Confirmation.aspx" and store the input gathered from the controls into the database.

  CONFRIMATION PAGE

- This page will request the cookie which has the victim info store and also the Session containing the worker info.
- Display a message confirming the addition of victim into the database using the above information.

  UPDATE PAGE

- When the page loads the gridview will be populated with the database's information and the drop down list box will be populated with the id numbers of the victims.
- Worker has to select a Victim's ID number to update their needs and press the button "Confirm" which will take the radiobox input and update the database accordingly.

  DELETE PAGE

- When the page loads the gridview will be populated with the database's information and the drop down list box will be populated with the id numbers of the victims.
- Worker has to select a Victim's ID number to delete them from the database and press the "Delete" button which will update the database accordingly.
- A Label will display confirmation of the delete action and the ID no. of the victim.
