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