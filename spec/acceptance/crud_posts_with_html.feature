Feature: CRUD Posts with HTML

  Scenario: User can see a static list of all posts
    Given some blog posts exist
      And I am on the posts page
    Then I should see the posts listed

  Scenario: User can create a new blerg post
    Given I am on the new post page
    When I fill out the form and submit it
    Then I should see the new post

  Scenario: User can view a post on its own
    Given some blog posts exist
    And I am on the posts page
    When I go to the first post
    Then I should see the first post content
