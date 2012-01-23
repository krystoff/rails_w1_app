Feature: My Storm
  To track each storm
  As a storm tracker
  I want to ensure each day entered has snowfall
  
  Scenario: Recording snowfall
    Given I have a storm
    And it has recorded a day with snowfall
    Then snowfall should be >= 0