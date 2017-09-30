# Shoe Frau

#### _Epicodus Solo Coding Project Ruby Week 4, 9/29/17_

#### _**L. Devin MacKrell**_

## Description

_An app for a shoe distribution company that allows the user to track shoe brands and the stores that they are in built using Ruby and ActiveRecord._

## Setup/Installation Requirements

* Clone this repository at [github.com/MackLess/shoes_for_you](https://github.com/MacKLess/shoes_for_you.git)
* Ensure you have Postgres installed and running ([instructions here](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef))
* Create a database ```shoes_for_you_development``` by running the command ```createdb -T template0 shoes_for_you_development```
* Run the command ```psql shoes_for_you_development < my_database.sql``` in the project root directory
* Run the command ```ruby app.rb``` in the project root directory
* Open ```localhost:4567``` in your web browser

## Specifications

* _User can add, update, delete, and list shoe stores._
* _User can add and list new shoe brands along with the price._
* _User can add existing shoe brands to a store to indicate that the store stocks them._
* _User can associate a shoe brand with multiple stores._
* _User can view all of the brands a store sells on the individual store page._
* _User can add stores and brands in any case and have them store with a uppercase first letter format._
  * Example input: chacos
  * Example output: Chacos
* _User can list price in currency format regardless of how it is entered._
  * Example input: 125
  * Example output: $125.00
* _User cannot save stores or brands if the name is blank._
* _User cannot enter a store or brand into the database more than once._
* _User can limit store and brand names to a maximum of one hundred characters._

## Bugs

_The app is flawed in that when you try to add shoe brands to a given store, it adds all the shoe brands instead of just the selected brands._

## Support and contact details

_Please contact [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues, or if you would like to contribute to the code._

## Technologies Used

* Ruby
* Sinatra
* Postgres
* ActiveRecord

### License

Copyright (c) 2017 **L. Devin MacKrell**

*Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*
