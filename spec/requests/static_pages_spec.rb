require 'spec_helper'

#Test Code for Static pages
describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	#Test code for "Home Page"
	describe "Home page" do
		#check headline
		it "should have the h1 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end
	
		#check title
		it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "#{base_title} | Home")
		end
	end

	#Test Code for "Help Page"
	describe "Help Page" do
		#check headline
		it "should have the h1 'Sample App'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		#check title
		it "should have the title 'Help'"	do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title} | Help")
		end
	end

	#Test Code for "About Page"
	describe "About Page" do
		#check headline
		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end
		#check title	
		it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{base_title} | About Us")
		end
	end

	#Test Code for "Contact Page"
	describe "Contact page" do
		#check headline
			it "should have the h1 'Contact'" do
				visit '/static_pages/contact'
				page.should have_selector('h1', :text => 'Contact')
			end
		#check title
			it "should have the title 'Contact'" do
				visit '/static_pages/contact'
				page.should have_selector('title', :text => "#{base_title} | Contact")
			end
	end		
end
