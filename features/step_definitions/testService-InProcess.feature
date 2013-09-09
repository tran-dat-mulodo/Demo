Feature: Fruit list
	In order to make a greate smoothie
	I need some fruit.
	
	Scenario: List fruit
		Ip Given the system know about the following user:
			| user			| pass		|
			| dat			| 1234		|
			| son			| 12345		|
		Ip When the client request GET /service
		Ip Then the response should be JSON:
			"""
			[
				{"user": "dat",  "pass": "1234"},
				{"user": "son",  "color": "12345"}
			]
			"""
			