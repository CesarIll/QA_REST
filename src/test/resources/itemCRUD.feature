Feature: Item

  @Item
  Scenario: As an admin user
            I want to create, read, update and delete an item
            So that I probe the item is created correctly

    Given Access to Todo.ly with email "upb2021@upb.com" and password 12345
    When I sent a POST request for creation of a new item at http://todo.ly/api/items.json
    """
    {
      "Content": "Item Cesar Cucumber CRUD"
    }
    """
    Then My status code must be 200 (Ok)
    And My item content must be
    """
    {
      "Id": "IGNORE",
      "Content": "Item Cesar Cucumber CRUD",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": "IGNORE",
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": "IGNORE",
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
    And I get the Id and I save it in ID_ITEM
    When I sent a PUT request for update of a new item at http://todo.ly/api/items/ID_ITEM.json
    """
    {
      "Content":"Item Cesar Cucumber CRUD Update"
    }
    """
    Then My status code must be 200 (Ok)
    And My item content must be
    """
    {
        "Id": ID_ITEM,
        "Content": "Item Cesar Cucumber CRUD Update",
        "ItemType": 1,
        "Checked": false,
        "ProjectId": null,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "",
        "Recurrence": null,
        "ItemOrder": "IGNORE",
        "Priority": 4,
        "LastSyncedDateTime": "IGNORE",
        "Children": [],
        "DueDateTime": null,
        "CreatedDate": "IGNORE",
        "LastCheckedDate": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": false,
        "Notes": "",
        "InHistory": false,
        "SyncClientCreationId": null,
        "DueTimeSpecified": true,
        "OwnerId": "IGNORE"
    }
    """
    When I sent a GET request for retrieve an item at http://todo.ly/api/items/ID_ITEM.json
    Then My status code must be 200 (Ok)
    And My item content must be
    """
   {
        "Id": ID_ITEM,
        "Content": "Item Cesar Cucumber CRUD Update",
        "ItemType": 1,
        "Checked": false,
        "ProjectId": null,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "",
        "Recurrence": null,
        "ItemOrder": "IGNORE",
        "Priority": 4,
        "LastSyncedDateTime": "IGNORE",
        "Children": [],
        "DueDateTime": null,
        "CreatedDate": "IGNORE",
        "LastCheckedDate": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": false,
        "Notes": "",
        "InHistory": false,
        "SyncClientCreationId": null,
        "DueTimeSpecified": true,
        "OwnerId": "IGNORE"
    }
    """
    When I sent a DELETE request to remove an item at http://todo.ly/api/items/ID_ITEM.json
    Then My status code must be 200 (Ok)
    And My item content must be
    """
    {
        "Id": ID_ITEM,
        "Content": "Item Cesar Cucumber CRUD Update",
        "ItemType": 1,
        "Checked": false,
        "ProjectId": null,
        "ParentId": null,
        "Path": "",
        "Collapsed": false,
        "DateString": null,
        "DateStringPriority": 0,
        "DueDate": "",
        "Recurrence": null,
        "ItemOrder": "IGNORE",
        "Priority": 4,
        "LastSyncedDateTime": "IGNORE",
        "Children": [],
        "DueDateTime": null,
        "CreatedDate": "IGNORE",
        "LastCheckedDate": "IGNORE",
        "LastUpdatedDate": "IGNORE",
        "Deleted": true,
        "Notes": "",
        "InHistory": false,
        "SyncClientCreationId": null,
        "DueTimeSpecified": true,
        "OwnerId": "IGNORE"
    }
    """