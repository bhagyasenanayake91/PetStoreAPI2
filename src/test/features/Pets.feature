Feature: Pets
  All functionality related to pets

  Scenario Outline 1.1: Add new pet to the store
    Given pet is new to the store
    When new pet details <PetID>, <PetName>, <PhotoUrls>, <Tags>, <Status> are submitted
    Then new pet is added to the store

    Examples:
      |PetID  |PetName |PhotoUrls      |Tags | Status  |
      |1099   |Buddy   |www.photo.com  |011  |Available|
      |1034   |Lassie  |www.photo.com  |101  |Available|

  Scenario 1.2: Update existing pet details
    Given pet details have changed
    When pet details have been changed
    Then pet details are updated

  Scenario 1.3: Find pet by status
    Given pets exist in the store
    When pet is searched by status “Available”, “Pending” or “Sold”
    Then pet with the specified status is displayed

  Scenario 1.4: Find pet by invalid status
    Given pets exist in the store
    When pet is searched by invalid status
    Then error is displayed “Invalid status value”

  Scenario 1.5: Find pet by id
    Given pet exist in the store
    When pet is searched by id
    Then pet with the specified id is displayed

  Scenario 1.6: Find pet by non-existent pet id
    Given pet does not exist in the store
    When pet is searched by not-existent pet id
    Then error is displayed “Pet not found”

  Scenario 1.7: Find pet by invalid pet id
    Given pet does not exist in the store
    When pet is searched by invalid pet id
    Then error is displayed “Invalid ID supplied”

  Scenario 1.8: Update pet details (search by Pet Id)
    Given pet id exists in the store
    When pet name and status of the pet is update
    Then pet details are updated

  Scenario 1.9: Update pet details (search by invalid Pet Id)
    Given pet id does not exists in the store
    When pet is searched by invalid pet id
    Then error is displayed “Invalid input”

  Scenario 1.10: Delete pet
    Given pet exists in the store
    When pet id is submitted
    Then the record with the specified pet id will be deleted

  Scenario 1.11: Delete pet by non-existent pet id
    Given pet does not exist in the store
    When not-existent pet id is entered to be deleted
    Then error is displayed “Pet not found”

  Scenario 1.12 Find pet by invalid pet id
    Given pet does not exist in the store
    When invalid pet id is entered to be deleted
    Then error is displayed “Invalid ID supplied”

  Scenario 1.13: Upload an image for pet
    Given pet id exists in the store
    When image of pet is uploaded
    Then image will be updated for the pet
