# Polymorphic Model Testing

## Initial thoughts:

This project is meant to be a simple CRUD app that does the following:

Creates a Profile and Location when a User is created. Both should be associated with the User.

Creates a Profile and Location when a Startup is created. Both should be associated with the Startup.

Both Users and Startups should have destroy dependent functionality in their models for their respective Profiles and Locations.
- Users has 1 Startup.
- Users have 1 Profile and 1 Location.
- Startups have many Users.
- Startups have 1 Profile and 1 Location.
- Locations can belong to a Startup or a User.
- Profiles can belong to a Startup or a User.


## Requirements

- Model tests for each model (validations and associations)
- Simple forms for creation of Users and Startups
- Attributes for migration tables are open-ended

## Implementation Decisions

I decided to utilize polymorphic associations in order to allow Users and Startups to have Locations and Profiles without clogging the database with empty foreign keys from whichever class was not being associated with the Location or Profile.

I used ```destroy: :dependent``` to ensure that Profiles and Locations associated with Users or Startups that were being deleted would also be deleted from the database.

For the time being I have decided to implement the creation of associated objects in the controller instead of by using a before save callback. I may revisit this decision later.
For reference, something like the Factory_Girl callback shown here:http://stackoverflow.com/questions/7747945/factorygirl-and-polymorphic-associations

I also might want to test have_db_column and have_db_index later.


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.