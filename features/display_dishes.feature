Feature: Display dishes on the menu page
    As a User,
    In order to decide what to eat,
    I would like to see dishes on the menu page


    Scenario: Display dishes on the menu page
        Given the following dishes exists
            | name  | price | description   |
            | pasta | 100   | very nice     |   
        When I visit the menu page
        Then I should see 'pasta' in the dish table
        And I should see '100' in the dish table
        And I should see 'very nice' in the dish table
        And I should see currency 'SEK'
        And I should see an 'order' button
        And I should see 'quantity' form