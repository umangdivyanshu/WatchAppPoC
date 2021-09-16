@addProduct
Feature: Adding New Products Test


Scenario: Adding new watches to the product list
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user'
  And I enter the password 'password'
  When I tap on login button
  Then I successfully login to see homescreen
  When I tap on Add icon
  Then I see the form to add watches
  And I enter watch title 'Hublot'
  And I enter watch description 'Performance Watch'
  And I enter watch price '115000'
  And I enter watch image path 'https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg'
  When I tap on Save button
  Then I see alert popup with message 'Product Added Successfully'