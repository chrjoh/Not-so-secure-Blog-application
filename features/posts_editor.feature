Feature: Blog posts
  As a editor
  I want to be able to create new posts

  Scenario: As a editor I want to be able to create a new post
    Given I go to the homepage
    When I follow "Ny post"
    And I fill in the following:
      | Titel   | Ny post                            |
      | Löptext | Lite extra text som skall vara med |
    And I press "Spara"
    Then I should be on Ny post page
    And I should see "Lite extra text som skall vara med"


  Scenario: As a editor I want to update a post
    Given a post exists with a title of "Ny post"
    Then I go select the post "Ny post" on the startpage
    And I click on the "Uppdatera post"
    When I fill in "Titel" with "new title"
    And I press "Spara"
    Then I should be on new title page
    And I should see "new title"
