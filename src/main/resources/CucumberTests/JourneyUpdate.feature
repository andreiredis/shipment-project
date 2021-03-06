@tag
Feature: Journey Information Update

Description : 	The system should allow the logistic company to update journeys
								information (e.g., containers current position).
Actor : Logistic Company
#For now client

	@tag1
	Scenario: Ship departure with container
		Given a Client "Andrei7" with address "259 Lyngby7" email "Andrei@roumania7" and ref person "Yann7"
		And the port of Copenhagen which has 1 containers
		And the port of Hong Kong which has 1 containers
		And a registered ship in Copenhagen
		And a registered journey from Copenhagen to Hong Kong with "oranges4"
		And the container is added to the ship
		When the worker informs of the departure of the ship transporting the container
		Then the ship and the container are at sea
		
		
	@tag2
	Scenario: Ship arrival with container
		Given a Client "Andrei10" with address "259 Lyngby10" email "Andrei@roumania10" and ref person "Yann10"
		And the port of Copenhagen which has 2 containers
		And the port of Hong Kong which has 1 containers
		And the port of Oslo which has 1 containers
		And a registered journey from Copenhagen to Hong Kong with "oranges10"
		And a registered journey from Copenhagen to Oslo with "toys10"
		And a registered ship at sea transporting the containers and heading to Oslo
		When a worker informs of the arrival of the ship 
		Then the ship and the containers are in Oslo
		And the journey to Oslo is ended and the container is dropped off at the port
		