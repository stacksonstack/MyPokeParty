# My Poke Party!

MyPokeParty is an app that allows a user to submit their ideal party of 6 out of the original 151 Pokemon. If you are having trouble narrowing it down to only 6, don’t worry, you can update your party as frequently as you like. You can also completely release your Pokemon party if you wish to do so. You don’t need to create an account with us to view our information on each of the original Pokemon or to view any user’s party. However, you must sign up with us in order to post your party.

## Built With
- Ruby on Rails
- Active Model Serializer
- Sqlite3
- Action Controller + Action View 
- Rack
- Pure CSS
- Poke API ~ https://pokeapi.co/

## Getting Started
The steps of using our application are:
* Fork this repo 
* In terminal run `bundle install`
* In terminal run `yarn install --check-files`
* In terminal run `rails db:migrate`
* In terminal run `rails db:seed`
* In terminal run `rails s`
* Open your local server on your browser at http://localhost:3000/sessions/new_login
* Click on Log in if you are a returning user, or sign up if you are a new user. You won't be able to access the site without logging in first!
* When you sign up or log in, you will be directed to your profile. If you do not have a party, you will see a button that allows you to catch Pokemon. If you do have a party, you will see options to either update your party or release all of your Pokemon.
* If you choose to either create a new party or update your current one, you will be redirected to our party form. Here, you can choose each of your 6 Pokemon from a dropdown menu. When you’re ready, press submit and your new party is ready to go!
* At any point, feel free to click on Pokemon or trainers in the nav bar. Pokemon will bring you to an index page with pictures and pokedex numbers for every Pokemon. Click on any one of them to learn more. If you click on users, you will see a list of all of our users. Click on any of them to view their party.

## Demo
- https://youtu.be/aeV4IEF_07Q

## Contributors
* Stacey Carrillo 
* Liam Hanafee-Areces (Project Partner)
  * Github - https://github.com/liamH47
