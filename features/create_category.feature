Feature: Create a Category
  As a blog administrator
  In order to allow others to see my categorized posts 
  I want to categorize my posts
  
  Background: 
    Given the blog is set up
    And I am logged into the admin panel 
    
  Scenario: Successful create category 
    Given I am on the new category page 
    When I fill in "Name" with "Tacos"
    And I fill in "Description" with "boba"
    And I press "Save"
    Then I should be on the new category page
    Then I should see "Tacos"
    When I follow "Tacos"
    Then I should see "boba"
    