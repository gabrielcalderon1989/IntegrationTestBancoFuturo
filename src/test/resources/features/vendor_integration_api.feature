@vendorIntegrationApi
Feature: It is required to perform a service that receives the information exposed by a provider API where it shows the risk of a user at the time of making a transaction

  @vendorIntegrationApi
  Scenario:When the request for information from a user and transactional page is made it must be successful.
    Given The user was performing a transaction in the bank's system
    When A call is made to the api for provider integration
    Then The service should respond to me with user information and risk

  @vendorIntegrationApi
  Scenario: When a call is made to the provider api with a user that does not exist in the system, the system must inform that the user does not exist
    When A call is made to the api for provider integration
    Then The service should respond that the user does not exist

  @vendorIntegrationApi
  Scenario: When a call is made to the provider api with a bad format, the system must report that the content is wrong
    Given The user was performing a transaction in the bank's system
    When A call is made to the api for provider integration with a bad format
    Then The service should respond that the format is wrong

  @vendorIntegrationApi
  Scenario: When a call is made to the api of a provider with no security, the system must inform that it is not authorized
    Given The user was performing a transaction in the bank's system
    When A call is made to the api for provider integration
    Then The service should respond that it is not authorized