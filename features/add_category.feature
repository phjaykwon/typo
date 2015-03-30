Feature: Add Category
  As an author
  In order group articles by common ones
  I want to be able to add a category

Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Add a new category "Useless"
    Given I am on the new category page
    When I fill in "category_name" with "Useless"
    And I press "Save"
    Then I should see "Useless"
