require 'selenium-cucumber'
google_page = GOOGLEPAGE.new

Given('I input somethingB') do
  navigate_to('https://www.google.com/')
  google_page.input_somethinga
  google_page.clear_something
  google_page.input_somethingb
end

When('I Click search button') do
  google_page.click_btn
end

Then('I scroll to end') do
  google_page.scroll_end
end
