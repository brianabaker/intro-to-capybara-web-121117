require 'spec_helper'

describe "GET '/' - Greeting Form" do
  # Code from previous example
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  # visit method navigates the test's browser to a specific URL. the '/' will test our root URL
  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

  #page method exposes the "session" or "browser" that is conceptually and literally being used during the test. gives you a Capybara::Session object that reprensents the browser page that the user would actually be looking at if they navigated to whatever route was last passed to the visit


describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => "Avi")
    click_button "Submit"

    expect(page).to have_text("Hi Avi, nice to meet you!")
  end
end
