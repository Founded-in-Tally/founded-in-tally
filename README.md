# Founded in Tally

Website to be used for [Founded in Tally](http://foundedintally.com).

## Features
  1. Lists startups founded in Tallahassee
  1. Lists contributing companies in Tallahassee
  1. Lists regular events supporting entrepreneurship in Tallahassee
  1. Various other pages (about, FAQ, etc.)
  1. Has an admin portal to ease the management of the database

## Technologies

### Server-side

  * [Ruby on Rails](http://rubyonrails.org/): Server-side web application framework written in Ruby
  * [Administrate](https://github.com/thoughtbot/administrate): Rails engine that helps you put together a super-flexible admin dashboard
  * [PostgreSQL](http://www.postgresql.com): Relational database, used to store admin/user and company/contributor/event information.

### Client-side
  * [jQuery](http://www.jquery.com): Cross-browser compliant JavaScript code.
  * [Modernizr](http://modernizr.com/): JavaScript library that detects HTML5 and CSS3 features in the browser.
  * [Font Awesome](http://fortawesome.github.io/Font-Awesome/): iconic font and CSS toolkit.

## Setup

1. Install and configure PostgreSQL
1. Install Ruby/Rails
1. In project root, run `bundle install` to install required gems
1. Configure app
    * Set the Rails env to use for configuration with `export RAILS_ENV=development`
    * ...
1. Run `rake db:create db:migrate db:seed` to create the database, run migrations, and seed with initial data
    * To start from scratch, either `rake db:drop` then the above, or `rake db`
    * For additional migrations, just run `rake db:migrate`
1. Run `rails server` (or `rails s`) to run the Rails server
1. Go to [http://localhost:3000](http://localhost:3000) for the front-end and [http://localhost:3000/admin](http://localhost:3000/admin) for the administrator interface


### Install and Configure PostgreSQL

#### MacOS

1. Install and start PostgreSQL (alternatively, [pgAdmin](https://www.pgadmin.org/) is a great utility)
```
$ brew install postgresql
$ brew services start postgresql
```

2. Create the database/user, for example,
```
$ psql
#= create database founded_in_tally;
#= create user tally_user;
#= alter user tally_user with encrypted password "tally_password";
#= grant all privileges on database founded_in_tally to tally_user;
```

#### Linux / Ubuntu

1. Install PostgreSQL
  ```
  sudo apt-get install postgresql postgresql-contrib pgadmin3
  ```

2. Create a database user with full rights on it
  ```
  sudo -u postgres createuser -D -A -P myuser
  sudo -u postgres createdb -O myuser mydb
  ```

3. Restart the PostgreSQL server
  ```
  sudo /etc/init.d/postgresql restart
  ```

### Install Ruby/Rails

... <!-- TODO -->

## License

This software is licensed under the MIT License. See [LICENSE file](https://github.com/Founded-in-Tally/founded-in-tally/blob/master/LICENSE.md) for details.

Portions of this software are copyright of their own owners as described in the files containing them.

## TODO

- Models
- Form to submit company (startup)
- Form to submit contributor
- Form to submit events
- Load and display companies on index
- Load and display contributors on contributors page
- Load and display events on events page
- Navigation updates (add new pages)
- CONTENT/COPY to pages
- Deploy to Heroku
- (Admin user creation)
- Companies input (admin)
