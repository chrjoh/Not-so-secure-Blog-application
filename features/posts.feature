Feature: Blog posts

  Scenario: As a visitor I want to see the latest post on the front page
    Given a post exists with a title of "Ny post"
    Then I visit the startpage
    And I should see "Ny post"

  Scenario: As a blogger I want to update a post
    Given a post exists with a title of "Ny post"
    Then I go select the post "Ny post" on the startpage
    And I click on the "Uppdatera post"
    When I fill in "Titel" with "new title"
    And I press "Spara"
    Then I should see "new title"
