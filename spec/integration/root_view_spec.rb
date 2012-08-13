require 'spec_helper'
require 'capybara/rspec'

describe "home interface"  do

  it "if user not signed in, should prompt user for sign in" do
    visit('/users/sign_in')
      page.should have_content('Sign in')
  end

  it "should have sign_up link" do
    visit('/users/sign_in')
      page.should have_content('Sign up')
  end

end

describe "initial view once user logs in" do

  Fabricator(:user) do
    email "john@john.com"
    password "johnjohn"
    password_confirmation "johnjohn"
  end

  it "should allow user to create a new caucus" do
    visit root_path
    fill_in('Email', :with => 'john@john.com')
    fill_in('Password', :with => 'johnjohn')
    click_link('Sign in')
    page.should have_content('Create a new caucus')
  end

end