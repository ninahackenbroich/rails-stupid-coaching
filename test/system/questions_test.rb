# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit "app/views/questions/ask.html.erb"
    assert_selector "p", text: "Ask your coach anything"
  end
end
