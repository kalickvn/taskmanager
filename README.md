# Task Management 

Example project which build based on RoR inorder to create simple tasks.

## Getting started

Things you may want to cover:

* Ruby version: 3.0.0

* Postgres Database

## How to run the project

* Install Ruby: 3.0.0: Recommended: https://rvm.io/

* Install Postgres Database

* Change Database configuration config/database.yml

* Open Terminal and run following syntax:
    bundle install

    rake db:create

    rake db:migrate
    
    rake db:seed
    
    rails s

* Default webport: http://localhost:3000

* Account Information: username: admin@example.com - password: password

* Project has been tested under development environment.

## For Running Unit test

* Open Terminal and run following syntax:
    bundle install

    rake db:create RAILS_ENV=test

    rake db:migrate RAILS_ENV=test
    
    rake db:seed RAILS_ENV=test

    rails test test/models/task_test.rb or rails test
