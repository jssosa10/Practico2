Feature: Show all Statistics

#Estatico
#General
Scenario: Show general statistics
  When I press "Statistics"
  Then I should see "Fuel economy"
  Then I should see "Distance between fillups"
  Then I should see "Fillup cost"
  And I scroll down
  Then I should see "Cost per distance"
  Then I should see "Fuel price"
  Then I should see "Fuel consumption"
  Then I should see "Fillup locations"
  And I press the menu key
  Then I should see "Recalculate"
  Then I should see "Service intervals"
  Then I should see "Import / Export"
  Then I should see "Settings"
#Item
Scenario: Show "Fuel economy" statistics
  When I press "Statistics"
  Then I should see "Average fuel economy"
  Then I should see "Worst fuel economy"
  Then I should see "Best fuel economy"

Scenario: Show "Distance between fillups" statistics
  When I press "Statistics"
  Then I should see "Average distance"
  Then I should see "Minimum distance"
  Then I should see "Maximum distance"

Scenario: Show "Fillup cost" statistics
  When I press "Statistics"
  Then I should see "Average cost"
  Then I should see "Minimum cost"
  Then I should see "Maximum cost"
  Then I should see "Total cost"
  Then I should see "Cost last month"
  Then I should see "Estimated cost per month"
  Then I should see "Cost last year"
  Then I should see "Estimated cost per year"

Scenario: Show "Cost per distance" statistics
  When I press "Statistics"
  And I scroll down
  Then I should see "Average cost per mi"
  Then I should see "Minimum cost per mi"
  Then I should see "Maximum cost per mi"

Scenario: Show "Fuel price" statistics
  When I press "Statistics"
  And I scroll down
  Then I should see "Average price"
  Then I should see "Minimum price"
  Then I should see "Maximum price"

Scenario: Show "Fuel consumption" statistics
  When I press "Statistics"
  And I scroll down
  Then I should see "Smallest fillup"
  Then I should see "Largest fillup"
  Then I should see "Average fillup"
  Then I should see "Total fuel"
  Then I should see "Fuel per year"

Scenario: Show "Fillup locations" statistics
  When I press "Statistics"
  And I scroll down
  Then I should see "North"
  Then I should see "South"
  Then I should see "East"
  Then I should see "West"

#Dinamico
#Aqui esta la navegacion por todas las estadisticas pero la gran mayoria estan sujetas a un archivo .lic con el cual no contamos o indican que aun no estan desarrolladas
#Fuel economy
Scenario: Show "Average fuel economy" detailed statistics
  When I press "Statistics"
  And I press "Average fuel economy"
  Then I should see "Average fuel economy"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Worst fuel economy" detailed statistics
  When I press "Statistics"
  And I press "Worst fuel economy"
  Then I should see "Worst fuel economy"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Best fuel economy" detailed statistics
  When I press "Statistics"
  And I press "Best fuel economy"
  Then I should see "Best fuel economy"
  And I press back button
  Then I should see "Statistics"
#Distance between fillups
Scenario: Show "Average distance" detailed statistics
  When I press "Statistics"
  And I press "Average distance"
  Then I should see "Average distance between fillups"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Minimum distance" detailed statistics
  When I press "Statistics"
  And I press "Minimum distance"
  Then I should see "Minimum distance between fillups"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Maximum distance" detailed statistics
  When I press "Statistics"
  And I press "Maximum distance"
  Then I should see "Maximum distance between fillups"
  And I press back button
  Then I should see "Statistics"
#Fillup cost
Scenario: Show "Average cost" detailed statistics
  When I press "Statistics"
  And I press "Average cost"
  Then I should see "Average cost per fillup"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Minimum cost" detailed statistics
  When I press "Statistics"
  And I press "Minimum cost"
  Then I should see "Least expensive fillup"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Maximum cost" detailed statistics
  When I press "Statistics"
  And I press "Maximum cost"
  Then I should see "Most expensive fillup"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Total cost" detailed statistics
  When I press "Statistics"
  And I press "Total cost"
  Then I should see "Total amount spent on fuel"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Cost last month" detailed statistics
  When I press "Statistics"
  And I press "Cost last month"
  Then I should see "Money spent in the last month"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Estimated cost per month" detailed statistics
  When I press "Statistics"
  And I press "Estimated cost per month"
  Then I wait to see "No chart for this statistic (yet!)"

Scenario: Show "Cost last year" detailed statistics
  When I press "Statistics"
  And I press "Cost last year"
  Then I should see "Money spent in the last year"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Estimated cost per year" detailed statistics
  When I press "Statistics"
  And I press "Estimated cost per year"
  Then I wait to see "No chart for this statistic (yet!)"
#Cost per distance
Scenario: Show "Average cost per mi" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Average cost per mi"
  Then I wait to see "No chart for this statistic (yet!)"

Scenario: Show "Minimum cost per mi" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Minimum cost per mi"
  Then I wait to see "No chart for this statistic (yet!)"

Scenario: Show "Maximum cost per mi" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Maximum cost per mi"
  Then I wait to see "No chart for this statistic (yet!)"
#Fuel price
Scenario: Show "Average price" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Average price"
  Then I should see "Average fuel price"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Minimum price" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Minimum price"
  Then I should see "Least expensive fuel"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Maximum price" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Maximum price"
  Then I should see "Most expensive fuel"
  And I press back button
  Then I should see "Statistics"
#Fuel consumption
Scenario: Show "Smallest fillup" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Smallest fillup"
  Then I should see "Smallest fillup size"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Largest fillup" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Largest fillup"
  Then I should see "Largest fillup size"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Average fillup" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Average fillup"
  Then I should see "Average fillup size"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Total fuel" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Total fuel"
  Then I should see "Total fuel purchased"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "Fuel per year" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "Fuel per year"
  Then I wait to see "No chart for this statistic (yet!)"
#Fillup locations
Scenario: Show "North" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "North"
  Then I should see "Farthest north fillup"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "South" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "South"
  Then I should see "Farthest south fillup"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "East" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "East"
  Then I should see "Farthest east fillup"
  And I press back button
  Then I should see "Statistics"

Scenario: Show "West" detailed statistics
  When I press "Statistics"
  And I scroll down
  And I press "West"
  Then I should see "Farthest west fillup"
  And I press back button
  Then I should see "Statistics"
