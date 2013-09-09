Feature: Manage User
  Scenario: Create User
    Given I want contructor user username with "dat", password with "1234" #, role with 0
    When I call create PostTest
    Then I should see user have databaes
    
 Scenario: Remove a user
    Given delete: I find user username with "dat"
    When I will delete username "dat"
    Then I should see not user database
  
 Scenario: transaction
    Given contructor PostTest and PostTest2
     
       | user | pass | 
       | son  | 1234 |
    When I will create user and employee
    Then I should not see user and employee