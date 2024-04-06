# Flight Booker

This is an Odin Project for the purpose of practicing nested forms and attributes, so that a form submission might create multiple objects at once with one form instead of several sequential ones. In this case, creating information on flight bookings and their passangers. On the side, it's also a good opportunity to practice seeding the database with baseline data, in this case with flights which will be used to making bookings and may be searched by users.

This project has also been updated at a later date to include mailer functionality; creating a booking should send a confirmation email to every passenger's individual email addresses. LetterOpener should catch these emails on the development environment, but should theoretically send actual emails in production.

The project is set up to work with PostgreSQL, and so should be viable for upload to third party platforms such as Fly.io or Heroku

The guidelines for the project can be found here: https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker