Feature: Login Test

Scenario: Validate login with blank input
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  When I tap on login button
  Then I see error messages for blank input


Scenario: Validate login with invalid credentials
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user123'
  And I enter the password 'password123'
  When I tap on login button
  Then I see error messages for invalid input


Scenario: Validate login with valid credentials
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user'
  And I enter the password 'password'
  When I tap on login button
  Then I successfully login to see homescreen