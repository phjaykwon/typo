Feature: Merged Article Contains Right Content
  As a blog administrator
  In order to keep track of two articles' contents as one
  I want to be able see the correct merged article

Background:
  Given the blog is set up
  Given I am logged into the admin panel
  When I am on the edit article page for "pub1article"
  When I fill in "4" for "merge_with"
  And I press "Merge"

Scenario: Merged article should contain the text of both previous articles
  Then I should see "Article merged!"

Scenario: Merged article should have one author


  