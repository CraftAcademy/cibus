Feature: Dish categories displayed on the menu page
  As a User,
  In order to make my decisions easier,
  I would like to see dish categories on the menu page: Starters, Main Courses and Desserts.

  Background:
    Given The following dishes exist in the database
    | name             | price      | description                             | 
    | Pasta		         | 100        | Very nice                               |
    | Cesar Salad      | 80         | Nuritious salad and a perfect starter   |
    | Tiramisu         | 60         | The most known Italian dessert          |

  Scenario: Display categories on the menu page
    When I'm on the menu page
    Then I should see 'Cesar Salad' in the 'Starters' category
    And I should see 'Pasta' in the 'Main Dishes' category
    And I should see 'Tiramisu' in the 'Desserts' category