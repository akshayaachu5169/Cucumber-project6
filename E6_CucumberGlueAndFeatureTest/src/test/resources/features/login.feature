#Author:Akshaya...email...domain..
@login
Feature: validate login page
@validuser @smoketest
  Scenario Outline: validate login page with valid credentials
    Given open browser as "chrome"
    When enter url as "vcentryapp"
    And enter username as "validuser"
    When enter password as "mummy@123"
    And click login button
    Then verify the welcome page as "hello" in header
    But dont click remember password
    
    @invaliduser
    Scenario Outline: validate login page with invalid credentials
    Given open browser as "chrome"
    When enter url as "vcentryapp"
    And enter username as "invaliduser"
    When enter password as "mummy@123"
    And click login button
    Then verify the welcome page as "hello" in header
    But dont click remember password
    
    @admin @smoketest @sanitytest
    Scenario Outline: validate login page with admin credentials
    Given open browser as "chrome"
    When enter url as "vcentryapp"
    And enter username as "adminuser"
    When enter password as "mummy@123"
    And click login button
    Then verify the welcome page as "hello" in header
    But dont click remember password
    
    @guest @smoketest
    Scenario Outline: validate login page with guest credentials
    Given open browser as "chrome"
    When enter url as "vcentryapp"
    And enter username as "guestuser"
    When enter password as "mummy@123"
    And click login button
    Then verify the welcome page as "hello" in header
    But dont click remember password

@user1 @sanitytest
Scenario Outline: validate login page with credentials
    Given open browser as "<browser>"
    When enter url as "<app url>"
    And enter username as "<username>"
    When enter password as "<password>"
    And click login button
    Then verify the welcome page as "<welcomemsg>" in header
    But dont click remember password
    Examples: 
      | browser | app url  | username | password | welcomemsg  |
      | chrome  | vcentry  | Akshaya  | pass@123 | welcomemsg1 |
      | firefox | flipkart | Aswin    | pass@456 | welcomemsg2 |
      | IE      | amazon   | Aakash   | pass@789 | welcomemsg3 |
