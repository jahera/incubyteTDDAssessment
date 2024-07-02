# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version ruby-3.0.0

* Rails version 7.0.8

* Database --skip-active-record

* Use system testing TDD with rspec-rails

  Step 1. Added gem inside gemfile gem 'rspec-rails'

  Step 2. bundle install

  Step 3. rails generate rspec:install

  Step 4. rails generate rspec:model string_calculator

* How to run the test suite

   Exam: rspec spec/models/string_calculator_spec.rb

* A string_calculator.rb file has been created inside the model folder and implementation of the add method

Input and Outout

Loading development environment (Rails 7.0.8.4)
3.0.0 :001 > StringCalculator.add("")
 => 0 
3.0.0 :002 > StringCalculator.add("1")
 => 1 
3.0.0 :003 > StringCalculator.add("7")
 => 7 
3.0.0 :004 > StringCalculator.add("1,2")
 => 3 
3.0.0 :005 > StringCalculator.add("1,7")
 => 8 
3.0.0 :006 > StringCalculator.add("1,2,3,4")
 => 10 
3.0.0 :007 > StringCalculator.add("1,2,3")
 => 6 
3.0.0 :008 > StringCalculator.add("1\n2,3")
 => 6 
3.0.0 :009 > StringCalculator.add("//;\n1;2")
 => 3 
3.0.0 :010 > StringCalculator.add("//|\n1|2|3")
 => 6 
3.0.0 :011 > StringCalculator.add("1,-2,3")
app/models/string_calculator.rb:28:in `add': negative numbers not allowed: -2 (RuntimeError)
	from (irb):11:in `<main>'
3.0.0 :012 > 


* ...
