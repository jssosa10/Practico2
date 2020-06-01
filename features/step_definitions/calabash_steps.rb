require 'calabash-android/calabash_steps'

Then /^I set orientation to portrait$/ do
    perform_action('set_activity_orientation', 'portrait')
end

Then /^I set orientation to landscape$/ do
    perform_action('set_activity_orientation', 'landscape')
end

Then /^I take a screenshot named "([^\"]*)"$/ do |name|
    screenshot(options={:name=>name})
end

Then /^I print a list of all items$/ do
    puts query('*')
end

Then("I wait for {float} seconds") do |float|
    sleep(float.to_i)
end

Then /^I press back button$/ do
    Device.press_back_button
end