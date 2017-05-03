require 'calabash-android/calabash_steps'
Given(/^the app has launched$/) do
wait_for do
!query(“*”).empty?
end
end
Then(/^I take screenshot$/) do
  screenshot_embed
end
Then(/^I see result in ShaderTextView$/) do
  perform_action('press_l21n_element', 'ok', nil, 'android')
end
Then(/^I see result in InputEditText$/) do
  perform_action('press_l25n_element', 'ok', nil, 'android')
end