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

  it "should allow user to create a new caucus" do
    #login_fab_user is defined in spec_helper.rb
    login_fab_user
    page.should have_content('Create a new caucus')
  end

  it "should not allow non-signed in user to create a new caucus" do
    visit new_team_path
    page.should_not have_content('Create a new caucus')
  end

  it "should have fields for creating a new team" do
    login_fab_user
    visit('/teams/new')
    page.should have_content('Create your caucus')
    page.should have_content('Representative')
  end


end
