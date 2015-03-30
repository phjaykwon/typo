Feature: Merged Article Contains Right Content
  As a blog administrator
  In order to keep track of two articles' contents as one
  I want to be able see the correct merged article

Background:
  Given the blog is set up
  And I am logged into the admin panel
  When I am on the edit article page for "pub1article"
  When I fill in "merge_with" with "4"
  And I press "Merge"

Scenario: Merged article should contain the text of both previous articles
  Then I should see "Article merged!"

Scenario: Merged article should have one author
  Then there should be only one author for "pub1article"

