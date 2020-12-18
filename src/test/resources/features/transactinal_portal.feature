@transactionalPortal
Feature: A transactional portal is required where the user can login and view their transactions

  @transactionalPortal
  Scenario Outline: Make a Login
    Given There was a user at Banco del Futuro
    And The user is using as browser <browser>
    And The user navigate in the transactional page of the Banco del Futuro
    When The user enters his personal information
    Then The user should enter the transaction page
    @Chrome
    Examples:
      | browser       |
      | Google Chrome |
    @Firefox
    Examples:
      | browser |
      | Firefox |
    @InternetExplorer
    Examples:
      | browser   |
      | IExplorer |
    @Edge
    Examples:
      | browser |
      | Edge    |

  @transactionalPortal
  Scenario Outline: The user cannot log in by wrong data
    Given There was a user at Banco del Futuro
    And The user is using as browser <browser>
    And The user navigate in the transactional page of the Banco del Futuro
    When User enters wrong personal information
    Then The user should not enter the transaction page
    @Chrome
    Examples:
      | browser       |
      | Google Chrome |
    @Firefox
    Examples:
      | browser |
      | Firefox |
    @InternetExplorer
    Examples:
      | browser   |
      | IExplorer |
    @Edge
    Examples:
      | browser |
      | Edge    |

  @transactionalPortal
  Scenario Outline: View a user's transactions
    Given A user logged in to the Banco del Futuro portal
    And The user is using as browser <browser>
    When The user clicks on the segment Transactions
    Then The user should see all his transactions in the portal
    @Chrome
    Examples:
      | browser       |
      | Google Chrome |
    @Firefox
    Examples:
      | browser |
      | Firefox |
    @InternetExplorer
    Examples:
      | browser   |
      | IExplorer |
    @Edge
    Examples:
      | browser |
      | Edge    |

  @transactionalPortal
  Scenario Outline: The user cannot see his transactions because he does not have permission
    Given A user logged in to the Banco del Futuro portal
    And The user is using as browser <browser>
    When The user clicks on the segment Transactions
    Then The user should not see all their transactions on the portal
    And there should be a sign informing that the user does not have permission
    @Chrome
    Examples:
      | browser       |
      | Google Chrome |
    @Firefox
    Examples:
      | browser |
      | Firefox |
    @InternetExplorer
    Examples:
      | browser   |
      | IExplorer |
    @Edge
    Examples:
      | browser |
      | Edge    |