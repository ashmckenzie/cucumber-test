Feature: App

  Scenario: Browse to /
    Given I am an anoynmous user
    When I browse to "/"
    Then I should see "Hello world!" on the page

  Scenario: Browse to /form
    Given I am an anoynmous user
    When I browse to "/form"
    And I fill in the "name" input with "Ash"
    And I click the "ok" submit
    Then I should be on the "/form-output" page
    And I should see "Hello Ash" on the page    

  Scenario: Browse to /redirect-me
    Given I am an anoynmous user
    When I browse to "/redirect-me"
    Then I should be on the "/redirected" page

  Scenario: Browser to /api/contests
    Given I am an anoynmous user
    When I browse to "/api/contests"
    Then I should be on the "/api/contests" page
    And I should see "10" contests nodes