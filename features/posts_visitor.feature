Feature: Blog posts
  As a visitor
  I want to be able to see the latest posts

  Scenario: As a visitor I want to see the latest post on the front page
    Given a post exists with a title of "Ny post"
    Then I visit the startpage
    And I should see "Ny post"
