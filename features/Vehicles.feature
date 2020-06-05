Feature: Manage all Vehicles

#Estatico
#General
Scenario: Show "Default Vehicle"
  When I press "Vehicles"
  Then I should see "Default vehicle"
  Then I should see "Auto-generated vehicle"
  And I press the menu key
  Then I should see "Add new vehicle"
  Then I should see "Edit vehicle types"
  Then I should see "Service intervals"
  Then I should see "Import / Export"
  Then I should see "Settings"
#Formularios
Scenario: Show vehicle form
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Add new vehicle"
  Then I should see "Vehicle"
  Then I should see "Vehicle information"
  Then I should see "Vehicle type"
  Then I should see "Car"
  And I press back button
  Then I should see "This is the default vehicle"
  Then I should see "Measurement units"
  And I press "Miles"
  Then I should see "Kilometers"
  And I press "Miles"
  And I press "Gallons"
  Then I should see "Litres"
  Then I should see "Imperial Gallons"
  And I press "Gallons"
  And I press "Miles / Gallon"
  Then I should see "Km / Gallon"
  Then I should see "Miles / Imp. Gal."
  Then I should see "Km / Imp. Gal."
  Then I should see "Miles / Litre"
  Then I should see "Km / Litre"
  Then I should see "Gallons / 100 km"
  Then I should see "Litres / 100 km"
  Then I should see "Imp. Gal. / 100 km"
  And I press "Miles / Gallon"
  Then I should see "Currency symbol"
  Then I should see "Add new vehicle"

Scenario: Show vehicle type form
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Edit vehicle types"
  Then I should see "Vehicle types"
  And I press the menu key
  And I press "Add new vehicle type"
  Then I should see "Vehicle type"
  Then I should see "Add new vehicle type"

#Dinamico
#CRUD
Scenario: Retrieve "Default Vehicle"
  When I press "Vehicles"
  Then I should see "Default vehicle"
  And I press "Default vehicle"
  Then I should see "Default vehicle"
  Then I should see "2010"
  Then I should see "Android"
  Then I should see "Mileage"
  Then I should see "Auto-generated vehicle"
  Then I should see "Car"
  And I press back button
  Then I should see "Miles"
  Then I should see "Gallons"
  Then I should see "Miles / Gallon"
  Then I should see "$"
  And I press back button
  Then I should see "Default vehicle"

Scenario: Retrieve "Car" vehicle type
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Edit vehicle types"
  Then I should see "Car"
  And I press "Car"
  Then I should see "Car"
  Then I should see "Passenger car"
  And I press back button
  And I press back button
  Then I should see "Car"

Scenario: Create "Javier Vehicle"
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Add new vehicle"
  And I enter "Javier Vehicle" into input field number 1
  And I enter "2018" into input field number 2
  And I enter "Nissan" into input field number 3
  And I enter "Versa" into input field number 4
  And I enter "Gris brown" into input field number 5
  And I press back button
  And I press "Miles"
  And I press "Kilometers"
  And I press "Gallons"
  And I press "Litres"
  And I press "Miles / Gallon"
  And I press "Km / Litre"
  And I press "Add new vehicle"
  Then I should see "Javier Vehicle"

Scenario: Create "Sedan" vehicle type
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Edit vehicle types"
  Then I should see "Vehicle types"
  And I press the menu key
  And I press "Add new vehicle type"
  And I enter "Sedan" into input field number 1
  And I enter "Passenger sedan" into input field number 2
  And I press back button
  And I press "Add new vehicle type"
  Then I should see "Sedan"

Scenario: Update "Default Vehicle"
  When I press "Vehicles"
  And I long press "Default Vehicle"
  Then I should see "Edit"
  And I press "Edit"
  And I clear input field number 5
  And I enter "Updated" into input field number 5
  And I press back button
 # Aqui hay un error de la aplicacion base por que no mantiene el tipo de vehiculo asignado sino muestra el primero de la lista
 # And I press "Car"
 # And I press "Sedan"
  And I press "Save changes"
  Then I should see "Default Vehicle"
  Then I should see "Updated"

Scenario: Update "Javier Vehicle"
  When I press "Vehicles"
  And I press "Javier Vehicle"
  And I clear input field number 2
  And I enter "2017" into input field number 2
  And I clear input field number 5
  And I enter "Gray Brown" into input field number 5
  And I press back button
 # Aqui hay un error de la aplicacion base por que no mantiene el tipo de vehiculo asignado sino muestra el primero de la lista
 # And I press "Car"
 # And I press "Sedan"
  And I press "Save changes"
  Then I should see "Javier Vehicle"
  Then I should see "Gray Brown"

Scenario: Update "Car" vehicle type
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Edit vehicle types"
  And I long press "Car"
  Then I should see "Edit"
  And I press "Edit"
  And I clear input field number 2
  And I enter "4 Passengers" into input field number 2
  And I press back button
  And I press "Save changes"
  Then I should see "4 Passengers"

Scenario: Update "Sedan" vehicle type
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Edit vehicle types"
  And I press "Sedan"
  And I clear input field number 2
  And I enter "5 Passengers" into input field number 2
  And I press back button
  And I press "Save changes"
  Then I should see "5 Passengers"

Scenario: Set "Javier Vehicle" as default
  When I press "Vehicles"
  And I long press "Javier Vehicle"
  Then I should see "Set vehicle as default"
  And I press "Set vehicle as default"

Scenario: Set "Default Vehicle" as default
  When I press "Vehicles"
  And I long press "Default Vehicle"
  Then I should see "Set vehicle as default"
  And I press "Set vehicle as default"

Scenario: Delete "Javier Vehicle"
  When I press "Vehicles"
  And I long press "Javier Vehicle"
  Then I should see "Delete"
  And I press "Delete"
  Then I should see "Really delete?"
  Then I should see "Are you sure you want to delete this?"
  Then I should see "This cannot be undone!"
  And I press "OK"
  Then I should not see "Javier Vehicle"
#Este escenario funciona dado el error de la asignacion del tipo de vehiculo en los vehiculos (explicado arriba)
Scenario: Delete "Car" vehicle type
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Edit vehicle types"
  And I long press "Car"
  Then I should see "Delete"
  And I press "Delete"
  Then I should see "Really delete?"
  Then I should see "Are you sure you want to delete this?"
  Then I should see "This cannot be undone!"
  And I press "OK"
  Then I should not see "Car"
#Validar campos obligatorios de los formularios
Scenario: Validate mandatory fields in vehicle form
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Add new vehicle"
  And I clear input field number 1
  And I press back button  
  And I press "Add new vehicle"
  Then I should see "Invalid vehicle title"
  And I enter "Test" into input field number 1
  And I press "Add new vehicle"
  Then I should see "Invalid vehicle year"
  And I enter "0" into input field number 2
  And I press "Add new vehicle"
  Then I should see "Invalid vehicle make"
  And I enter "Test" into input field number 3
  And I press "Add new vehicle"
  Then I should see "Invalid vehicle model"

Scenario: Validate mandatory field in vehicle type form
  When I press "Vehicles"
  And I wait for a second
  And I press the menu key
  And I press "Edit vehicle types"
  Then I should see "Vehicle types"
  And I press the menu key
  And I press "Add new vehicle type"
  And I clear input field number 1
  And I press back button
  And I press "Add new vehicle type"
  Then I wait to see "Invalid vehicle type title"
