Feature: Account Withdrawal

  Scenario: Withdrawing money
    Given I want to withdraw money
    When I withdraw money
    Then I get money

  Scenario: Withdrawing more money
    Given I want to withdraw more money
    When I withdraw money
    Then I get more money
