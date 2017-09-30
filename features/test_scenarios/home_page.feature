Feature: Acting in trivago home page. Demonstrating some assertion and scooping methods

  Scenario Outline: User navigates to home page and observes page content
    Given I am redirected on home page
    When I want to see <element>
    Examples:
    |element          |
    |searching_bar    |
    |searching_button |
    |slogan           |
    |trivago_logo     |


  Scenario: User navigates to home page, clicks on serach button and is redirected to searchin page
    Given I am redirected on home page
    When I click on searching_button in home page
    Then I want to see filter_on_search_page
