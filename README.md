Privileges
============

Description
-----------

The Privileges Online Application Management System facilitates access to the Harvard Library for both patrons and staff. 

Code Repository
---------------

https://github.com/berkmancenter/privileges

User Documentation
------------------

We're in the process of finalizing user documentation, but once it's up this will get updated with a pointer to it.

Requirements
------------

* Ruby 1.9.3 and a bunch of gems included in the Gemfile
* Rails 3.2.2
* A postgresql 9.x database server. Other databases MAY work (e.g. mysql), but they are untested.
* A webserver capable of interfacing with Rails applications. Ideally, apache or nginx with mod_passenger installed.
* Linux or OSX. Linux would be easier.

Setup
-----

* Install requirements (see above)
* Checkout the code
  * `git clone https://github.com/berkmancenter/privileges`
  * `cd privileges`
* Install libraries
  * `bundle install`
* Configure the database
  * `cp config/database.yml.example config/database.yml`
  * Setup a postgres user and update `config/database.yml` accordingly
  * `rake db:create`
  * `rake db:setup`
  * `rake db:migrate`
* Modify "config/initializers/devise.rb" for your environment
* Run bootstrap rake tasks for test data: 
  * rake privileges:bootstrap:run_all

Issue Tracker
-------------

We maintain a closed-to-the-public [issue tracker] (https://cyber.law.harvard.edu/projectmanagement/projects/privileges). Any additional issues can be added to the [GitHub issue tracker](https://github.com/berkmancenter/privileges/issues).

To Do
-----

The current to do items can be found within the [issue tracker] (https://cyber.law.harvard.edu/projectmanagement/projects/privileges).

Built With
----------

The generous support of the [Harvard Library
Lab](http://lab.library.harvard.edu/), the [Harvard Library Office for
Scholarly Communication](https://osc.hul.harvard.edu), the [Berkman Center for
Internet &amp; Society](http://cyber.law.harvard.edu) and the [Arcadia
Fund](http://www.arcadiafund.org.uk)

### Technologies

* [Rails](http://rubyonrails.org/)
* [PostgreSQL](http://www.postgresql.org/)

Contributors
------------

[Anita Patel] (https://github.com/apatel)

License
-------

GPLv2 - See the LICENSE file for more information.

Copyright
---------

Copyright &copy; 2014 President and Fellows of Harvard College
