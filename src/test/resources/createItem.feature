Feature: Item

  Scenario: As an admin user
            I want to create an item
            So that I probe the item is created correctly

    Given Access to Todo.ly with email "upb2021@upb.com" and password 12345
    When I sent a request for creation of a new item at "http://todo.ly/api/items.json"
    """
    {
      "Content": "Item Cesar Cucumber"
    }
    """
    Then My status code must be 200 (Ok)
    And My item content must be "Item Cesar Cucumber"