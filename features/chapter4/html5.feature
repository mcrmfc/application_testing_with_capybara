Feature: Validate Custom Controls on HTML5 Audio Player

  Scenario: Validate 'play' control
    Given I visit a page with a custom HTML5 audio player
    When I click to play a song
    Then the song plays

  Scenario: Validate 'play' control using JavaScript Debug Object
    Given I visit an application page with a custom HTML5 audio player
    When I click to play a song
    Then the song plays (event fires)

