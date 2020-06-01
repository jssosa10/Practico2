Feature: Test Fillup Feature

  Scenario: Save without filling fields
    Then I press button number 3
    Then I take a screenshot named "save_without_filling_fields__end"
    Then I see "Invalid value for volume"
