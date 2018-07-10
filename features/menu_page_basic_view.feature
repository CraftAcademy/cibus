Feature: View of the menu page
    As a User,
    In order to get information about the dishes
    I would like to see the menu on the landing page

    Scenario: menu page basic view
        When I visit the menu page
        Then I should see "Login" link
        And I should see "Signup" link
        And I should see "logo" link