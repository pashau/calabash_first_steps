Feature: Addition feature

  Scenario: calculate 1 + 2
  
#	Then I wait for 10 seconds
	Then I take screenshot
	Then I swipe right
	Then I take screenshot
	Then I press view with id "digit9"
	Then I take screenshot
	Then I press view with id "plus"
	Then I take screenshot
	Then I press view with id "digit6"
	Then I take screenshot
	Then I see "9 + 6"
	Then I see "15"
#	Then I see result in ShaderTextView #(15)
#	Then I see result in InputEditText	#(9+6)
	Then I press view with id "equal"
	Then I wait for 5 seconds
#	Then I take screenshot
#    Then I see "3"