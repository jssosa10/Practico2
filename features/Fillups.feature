Feature: Record fillup events & show history

#Estatico
#General | Formulario
Scenario: Show fillup form
  Given I should see "Fillup information"
  Then I should see "Tank was not filled to the top"
  Then I should see "Extra data"
  Then I should see "Save Fillup"
  And I press the menu key
  Then I should see "Edit fields"
  Then I should see "Service intervals"
  Then I should see "Import / Export"
  Then I should see "Settings"

Scenario: Show fillup field form
  Given I should see "Fillup information"
  And I wait for a second
  And I press the menu key 
  And I press "Edit fields"
  Then I should see "Fillup fields"
  And I wait for a second
  And I press the menu key
  And I press "Add new field"
  Then I should see "Fillup field"
  Then I should see "Add new field"

#Dinamico
#CRUD
Scenario: Create two fillup field
  Given I wait for a second
  And I press the menu key
  And I press "Edit fields"
  And I wait for a second
  And I press the menu key
  And I press "Add new field"
  And I enter "Gas station name" into input field number 1
  And I press back button
  And I press "Add new field"
  And I wait for a second
  And I press the menu key
  And I press "Add new field"
  And I enter "Gas station address" into input field number 1
  And I press back button
  And I press "Add new field"

#OJO Valida los calculos de rendimiento, campos obligatorios y valores inapropiados
Scenario Outline: Record fillup events
  When I press "Fillup"
  And I enter "<PricePerGal>" into input field number 1
  And I enter "<Gallons>" into input field number 2
  And I enter "<Odometer>" into input field number 3
  And I press back button
  And I enter "Automated testing" into input field number 4
  And I press "Save Fillup"
  Then I wait to see "<RESULT>"
  Examples:
  | PricePerGal | Gallons | Odometer | RESULT                       |
  | 2.50        | 2       | 20000    | 2.00 g                       |
  | 2.40        | 1.8     | 20100    | 55.56 mpg                    |
  | 2.45        | 1.9     | 20190    | 47.37 mpg                    |
  | 2.55        | 2.1     | 20300    | 52.38 mpg                    |
  |             |         |          | Invalid value for volume     |
  |             | 0       |          | Invalid value for price      |
  | 0           | 0       |          | Invalid value for odometer   |  
  | 0           | 0       | 0        | Invalid value for odometer   |
  | 0           | 0       | 999      | Invalid value for total cost |
  | 999         | 0       | 999      | Invalid value for total cost |
  | 0           | 999     | 999      | Invalid value for total cost |

Scenario Outline: Show history
  When I press "History"
  And I press "<Result>"
  Then I should see "Fillup on"
  Then I should see "Next"
  Then I should see "Previous"
  Then I should see "Fillup information"
  Then I should see "Is partial?"
  Then I should see "Volume"
  Then I should see "<Gallons> Gallons"
  Then I should see "Odometer"
  Then I should see "<Odometer>.00 mi"
  Then I should see "Price per unit"
  Then I should see "$<PricePerGal>"
  Then I should see "Total cost"
  Then I should see "$<Total>"
  Then I should see "Statistics"
  Then I should see "Distance"
  Then I should see "<Distance>"
  Then I should see "Economy"
  Then I should see "<Economy>"
  Then I should see "Edit"
  And I press back button
  And I press "History"
  And I long press "<Result>"
  Then I should see "Edit"
  Then I should see "Delete"
  And I press "Delete" 
  Then I should see "Really delete?"
  Then I should see "Are you sure you want to delete this?"
  Then I should see "This cannot be undone!"
  Then I press "Cancel"
  Examples:
  | Result    | Gallons | Odometer | PricePerGal | Total | Distance  | Economy   |
  | 52.38 mpg | 2.10    | 20300    | 2.55        | 5.35  | 110.00 mi | 52.38 mpg |
  | 47.37 mpg | 1.90    | 20190    | 2.45        | 4.66  | 90.00 mi  | 47.37 mpg |
  | 55.56 mpg | 1.80    | 20100    | 2.40        | 4.32  | 100.00 mi | 55.56 mpg |
  | 2.00 g    | 2.00    | 20000    | 2.50        |       |           |           |


