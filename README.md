# **Blank Canvas**

[Demo Video](https://vimeo.com/183908628)

<a href="https://github.com/hannako">Jess Jones</a> | <a href="https://github.com/bkluczynski">Bart Kluczynski</a> | <a href="https://github.com/nfabacus">Nobuyuki Fujioka</a> | <a href="https://github.com/liskowsky">Karol Lebiedzinski</a> | <a href="https://github.com/benjamin-white">Ben White</a>

This repo was made for the final challenge of our time with **Makers Academy** during the summer of 2016.
It evolved from a simple idea of allowing a user to generate a custom palette from their photos into an interior styling site, with interactive 'paintable' rooms.<br><br>
We employed Agile practices such as daily stand-ups and deliveing MVPs with XP values of courage, pairing and feedback to complete the project.


## **User Stories**
We arrived at the following user stories to help inform and drive our development iterations.

    As a visitor
    So I can paint a room similar to mine
    I would like to see a variety of interior styles on the homepage

    As a user seeking inspiration
    So that I gain colour palette ideas
    I want to create a colour palette from a photo I supply

    As a user
    So I can test the palette I have created
    I would like to be able to paint the room with my colours

    As a user
    So I can undo a colour choice
    I would like an eraser option when I paint

    As a user
    So I don't loose my designs
    I want to create an account and view my saved designs

    As a user
    So I can quickly understand how to use the site
    I would like a help page with some example demonstrations

## **Usage**

If you have PostgreSQL and bundler installed the following commands can be employed to run and the test the site locally :

    $ git clone https://github.com/hannako/blank_canvas
    $ cd blank_canvas
    $ createdb blank_canvas_development && createdb blank_canvas_test
    $ bin/rake db:migrate
    $ bundle install
    $ bin/rails s


## **Things we struggled with**

* Lack of JQueryUI support for nested SVG DOM events.
* Team member system incompatabilities when using Ruby Gems.
* Transfer of a complex hash from client to server.
* Configuring custom Rails routes.

## **Our Successes**

* Working with XML fragments on the server and Nokogiri.
* Recording SVG events with InteractJS.
* Switching colour extraction gems as required.
* Connecting saved images to the database.
* Detecting MIME types.
* Testing colour generation.
* CSS styling in a short timespan.
* Feedback and communication when working remotely.

## **Future Features**

* Add additional rooms to be styled.
* Connent to a search API for offering purchase suggestions.
* Tune palette generation for enhanced accuracy.
* Replace fixed CSS sizes with REMs and enhance stylesheet breakpoints.
