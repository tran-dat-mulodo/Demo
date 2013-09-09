 Feature: Gomo user manages pages
  Scenario: User adds a new page to their account
    Given I go to the new page page
    And I fill in "userTextField_ID" with "Myacc"
    When I press "Submit Post"
    #Then I should be on the page list page
    And I should see "successfully"