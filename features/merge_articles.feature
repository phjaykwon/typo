Feature: Merge Articles
  As a blog administrator
  In order to keep track of similar articles
  I want to be able to merge 2 articles in my blog

  Background:
    Given the blog is set up

  # Create a couple articles
  Scenario: A non-admin cannot merge articles.
    Given I am logged into the publisher panel
    When I am on the edit article page for "pub1article"
    Then I should not see "Merge"

  Scenario: An admin can merge articles.
    Given I am logged into the admin panel
    When I am on the edit article page for "pub1article"
    Then I should see "Merge"