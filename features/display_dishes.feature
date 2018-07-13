Feature: Display dishes on the menu page
    As a User,
    In order to decide what to eat,
    I would like to see dishes on the menu page

    Background: Dish
        Given the following dishes exists
        | name          | price | description              | category       |
        | Pasta         | 100   | Pasta with nutella       | Main Courses   |
        | Ceasar Sallad | 200   | Healty Sallad            | Starters       |
        | Tiramisu      | 80    | The best italian dessert | Desserts       |
        | Pizza         | 100   | Pasta with nutella       | Main Courses   |
        | Sushi         | 200   | Healty Sallad            | Starters       |
        | Chocolate     | 80    | The best italian dessert | Desserts       |


    Scenario Outline: Display dishes on the menu page
        When I'm on the menu page
        Then I should see "<name>"
        And I should see "<price>"
        And I should see "<description>"
        And I should see "<category>"
        And I should see currency 'SEK'
        And I should see 'Order' link
        And show me the page
        And I should see 'Quantity' column

    Examples:
        | name          | price | description              | category       |
        | Pasta         | 100   | Pasta with nutella       | Main Courses   |
        | Ceasar Sallad | 200   | Healty Sallad            | Starters       |
        | Tiramisu      | 80    | The best italian dessert | Desserts       |
        | Pizza         | 100   | Pasta with nutella       | Main Courses   |
        | Sushi         | 200   | Healty Sallad            | Starters       |
        | Chocolate     | 80    | The best italian dessert | Desserts       |
        
   