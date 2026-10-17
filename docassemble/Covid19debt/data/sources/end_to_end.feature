# Seeded with ALDashboard static fixture generator; reviewed against interview YAML.
@e2e
Feature: Complete Covid19debt

  Scenario: A minor receives the supported eligibility ending
    Given I start the interview at "DebtReport.yml"
    And the maximum seconds for each step is 120
    When I get to "under 18 contact" with this data:
      | var | value |
      | acknowledged_information_use['I accept the terms of use.'] | True |
      | user.name.first | Alex |
      | user.name.last | Example |
      | user.dob | today - 16 years |
      | user.gender | Nonbinary |
    Then the question id should be "under 18 contact"
    And I should see the phrase "you should contact a debt advisor"
