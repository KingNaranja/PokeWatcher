# PokéWatcher Server
https://poke-watcher.herokuapp.com/

### Overview 

*Pokewatcher* is a web app where users can log sightings of unique legendary Pokemon.
The pokewatcher server allows users to CRUD diary entries, search and find information on 
legendary pokemon, and manages your relationship with those Pokémon.

### Technologies Used

Ruby 
RubyonRails MVC
PostgreSQL 
Heroku

### ERD

*ERD Documentation can be viewed from Imgur*
https://imgur.com/a/eVOxzKc

### Approach

Building the *PokéWatcher* app followed a very streamlined approach thanks to Rails and its Active Record. 

Starting from the rails template the User auth model was made so I first generated a diary resource for the User. This resource was configured to belong to every user and inherit from the Protected Controller. This class gave the controller access to the `current_user` controller and only alowed the current user to make diary requests. 

Next, a unique controller action had to be made so that the user would be able to see diary entries that were only created on the same date. This request will be sent on every single sign-in. 

To complete this I found it more consistent to require the date module and define my own date to use as comparison rather than creating a method to compare timestamps. Although, my original design involved the latter, I am still satisfied with the performance. 

Lastly, to make it easier to the client side interace to output user information I modified each CRUD action to return the diary entries for the current user that performed the request.
The client, on successful requests, will use this data to update its diary.

# Future

Although, I did not successfully reach my desired scope for presentation, the MVP still leaves the user with the full capabilities of a [Pokémon Watcher](https://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_watcher).

For the next scope, I plan to add the ability to find **legendary** pokemon from a csv index and return that pokemon's information. This will add a joint table to the 1st scope's ERD that will connect the relationship of users and the diary entries. 

The objective being to enable the user to track down rare Pokémon they have yet to discover while easily being able to manage the Pokémon they have already encountered.
