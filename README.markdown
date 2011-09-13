= sortable_columns

A clean and lightweight solution for making table columns sortable.

== Features

=== Easy to use
Just bundle the gem, then your models are ready to be sorted by columns. No configuration required. Don't have to define anything in your models or helpers.

=== Simple scope-based API
Everything is method chainable.

== Install

Put this line in your Gemfile:
  gem 'sortable_columns'

Then bundle:
  % bundle


== Usage

=== Query Basics

* the +sort+ scope

  To sort the 'updated_at' column descending from the most recently updated to the oldest (default +column+ is 'created_at' || default +direction+ is 'ascending)
    User.sort('updated_at', 'descending')

=== Controllers

* the sort parameter is in <tt>params[:sort]</tt>

  Typically, your controller code will look like this:
    @collection = Resource.sort(params[:sort])

=== Views

* the same old helper method

  Just call the +sortable+ helper:
    <%= sortable column_name %>

== Copyright

Copyright (c) 2011 Brian McNabb. See LICENSE.txt for further details.