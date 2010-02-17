Feature: Switching authors
  In order to indicate which authors are committing
  A user should be able to
  change the currently active pair

  Scenario: No authors have been added
    When I try to switch to the pair "AA BB"
    Then the last command's output should include "Please add some authors first"

  Scenario: Pairing with two authors
    Given I have added the author "Linus Torvalds <linus@example.org>"
    And I have added the author "Junio C Hamano <junio@example.org>"
    And my global Git configuration is setup for "devs@example.com"
    When I switch to the pair "LT JH"
    Then `git pair` should display "Junio C Hamano + Linus Torvalds" for the current author
    And `git pair` should display "devs+jch+lt@example.com" for the current email
