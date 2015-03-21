Feature: Edit a Category
  As an author
  In order group articles by common ones in the correct manner
  I want to be able to edit a category

Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Edit a Category to "Useless"
    Given I am on the edit category page for 1
    When I fill in "category_name" with "Specific"
    And I press "Save"
    Then I should see "Specific"
    Then I should not see "General"
