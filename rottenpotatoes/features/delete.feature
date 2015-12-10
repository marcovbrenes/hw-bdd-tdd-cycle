Feature: delete movie

Scenario: Delete movie
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Aladdin      | G      | John Musker  | 25-Nov-1992  |
  
  And   I am on the details page for "Blade Runner"
  When  I press "Delete"
  Then  I am on the RottenPotatoes home page
  And   I should see "Aladdin"
  And   I should not see "Blade Runner"
