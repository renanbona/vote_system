# README

This README would normally document whatever steps are necessary to get the
application up and running.

* System dependencies

This project uses ruby 2.6.5

## Configuration

Clone the project and run `bundle install` and `yarn install`

## Database

This project uses Postgres so copy the database.yml and put your credentials  

`cp config/database.yml.sample config/database.yml`

then start the postgres database with the following  

`pg_ctl start`

You can create the postgres database by running: 

`rails:db create rails:db migrate`

## Test suit

You can run the test suite using
`bundle exec rspec`
