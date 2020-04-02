#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@tag
Feature: Register Container for Journey

Description: 	The system should allow the clients to register containers for journeys.
							Some information should be entered by the client (e.g., port of origin, 
							destination, content, company), while some information should be 
							automatically created by the system (e.g., journey id).
Actor: 	Client

Journey(Port origin, Port destination, String cargo, Client client)
  @tag1
  Scenario: Successful registration of containers for journey
  	Given a client with name "Andrei", address "259 Lyngby", ref person "Yann" and email "Andrei@roumania" 
  	And the port of Copenhagen
  	And the port of Hong Kong
    And a container not registered and located at Copenhagen
    When client registers a container of "Oranges" for a journey from Copenhagen to Hong Kong 
    Then the container is registered for the journey

