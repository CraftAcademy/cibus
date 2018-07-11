Feature: Display dishes on the menu page
    As a User,
    In order to decide what to eat,
    I would like to see dishes on the menu page

    Background: Dish
        Given the following dish exists
        | name  | price | description   |
        | Pasta | 100   | Very nice     |   

    Scenario: Display dishes on the menu page
        When I'm on the menu page
        Then I should see 'Pasta'
        And I should see '100'
        And I should see 'Very nice'
        And I should see currency 'SEK'
        And I should see 'Order' link
        And I should see 'Quantity'