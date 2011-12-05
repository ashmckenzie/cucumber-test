Feature: Example

  Scenario: Run with 1 command line argument
    Given I provide the command line argument "2"
    When I execute the program
    Then I should see "4"

  Scenario: Run with 2 command line arguments
    Given I provide the command line argument "2" and "3"
    When I execute the program
    Then I should see "6"