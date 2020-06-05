Feature: Cross functionality
  
#Estatico
#Service Intervals
Scenario: Show Service Intervals
  Given I wait for a second
  And I press the menu key
  And I press "Service intervals"
  Then I should see "Service intervals"
  Then I should see "You haven"
  Then I should see "t set any service intervals!"
  Then I should see "Press menu or use the buttons below to add some!"
  Then I should see "Add service interval"
  Then I should see "Edit templates"
  And I press "Add service interval"
  Then I should see "Vehicle"
  Then I should see "Template to use (optional)" 
  Then I should see "Service interval information"
  And I press back button
  Then I should see "When to remind"
  And I press "Miles"
  And I press "Kilometers"
  And I press "Days"
  Then I should see "Months"
  Then I should see "Years" 
  And I press "Weeks"
  Then I should see "When to start"
  Then I should see "Add service interval"   

Scenario: Show Service Intervals Template
  Given I wait for a second
  And I press the menu key
  And I press "Service intervals"
  And I wait for a second
  And I press the menu key
  And I wait for a second
  And I press "Templates"
  Then I should see "Service interval templates"
  And I wait for a second
  And I press the menu key
  And I press "Add service interval template"
  Then I should see "Service interval template"
  Then I should see "Service interval information"
  Then I should see "When to remind"
  And I press "Miles"
  And I press "Kilometers"
  And I press "Days"
  Then I should see "Months"
  Then I should see "Years"
  And I press "Weeks"
  Then I should see "Add service interval template"
#Import / Export
Scenario: Show Import
  Given I wait for a second
  And I press the menu key
  And I press "Import / Export"
  Then I should see "Import / Export data"
  Then I should see "If you need to get data"
  Then I should see "to connect to your computer via USB for this"
  And I press "Import data"
  Then I should see "Import data"
  And I press "Database (*.db)"
  And I press "Spreadsheet (*.csv)"
  Then I should see "Missing files?"
  Then I should see "To import files, place them"
  And I press "OK"
  Then I should see "Erase database before importing"

Scenario: Show Export
  Given I wait for a second
  And I press the menu key
  And I press "Import / Export"
  Then I should see "Import / Export data"
  Then I should see "If you need to get data"
  Then I should see "to connect to your computer via USB for this"
  And I press "Export data"
  Then I should see "Export data"
  Then I should see ".db"
  And I press "Database (backups, SQLite)"
  And I press "Spreadsheet (Excel, Google Docs)"
  Then I should see ".csv"
#Settings 
Scenario: Show Setting
  Given I wait for a second
  And I press the menu key
  And I press "Settings"
  Then I should see "Settings"
  Then I should see "Store location"
  Then I should see "Your location for fillups will be stored privately"
  And I press "Fillup options"
  Then I should see "Unit price, volume"
  Then I should see "Total cost, volume"
  Then I should see "Total cost, unit price"
  And I press "Cancel"
  Then I should see "Choose the most convenient way to enter data"
  Then I should see "Perform backups"
  Then I should see "Your data will be automatically copied to external storage"
  And I press "Change units"
  Then I should see "Units are stored per-vehicle."
  And I press "OK"
  Then I should see "How to set gallons/litres/km/etc."
  Then I should see "Notifications"
  Then I should see "Enable notifications"
  Then I should see "Service interval reminders enabled" 
  Then I should see "Select ringtone"
  Then I should see "Blink LED"
  Then I should see "LED will flash for reminders"
  Then I should see "Vibrate"
  Then I should see "Phone will vibrate for reminders"
  Then I should see "About Mileage 3.1.1"
  And I press "About"
