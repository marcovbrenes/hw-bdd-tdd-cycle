Feature: add new movie
    
Scenario: Add new movie
  Given I am on the RottenPotatoes home page
  When  I follow "Add new movie"
  Then  I should be on the Create New Movie page
  When  I fill in "Title" with "Test Movie"
  And   I select "R" from "Rating"
  And   I press "Save Changes"
  Then  I should be on the RottenPotatoes home page
  And   I should see "Test Movie"
  And   I should see "R"