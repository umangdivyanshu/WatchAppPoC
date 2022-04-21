Feature: Login Test

@login
Scenario: Validate login with blank input(TC003)
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  When I tap on login button
  Then I see error messages for blank input

@login
Scenario: Validate login with invalid credentials(TC004)
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user123'
  And I enter the password 'password123'
  When I tap on login button
  Then I see error messages for invalid input

@login
Scenario: Validate false positive login with valid credentials(TC005)
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user123'
  And I enter the password 'password123'
  When I tap on login button
  Then I successfully login to see homescreen

@login
Scenario: Validate login with invalid username(TC006)
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user123'
  And I enter the password 'password'
  When I tap on login button
  Then I see error message for invalid username

@login
Scenario: Validate login with invalid password(TC007)
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user'
  And I enter the password 'password123'
  When I tap on login button
  Then I see error message for invalid username

@login
Scenario: Validate login with valid credentials(TC008)
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  And I enter the username 'user'
  And I enter the password 'password'
  When I tap on login button
  Then I successfully login to see homescreen

@login
Scenario: Validate false positive blank input(TC009)
  Given the app is running fine
  When I tap the Next button
  Then I see the login screen
  When I tap on login button
  Then I successfully login to see homescreen