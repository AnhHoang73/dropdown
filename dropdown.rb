require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.get 'http://www.practiceselenium.com/check-out.html'
dropdown = driver.find_element(:id, "card_type")
puts dropdown.inspect
select_object = Selenium::WebDriver::Support::Select.new(dropdown)
select_object.select_by(:text,
 'Visa')
sleep 2
driver.quit

