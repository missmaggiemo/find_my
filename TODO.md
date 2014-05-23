# TODO

5/23/2014
<!-- Need to stop users from rating a business twice. -->
<!-- Autocomplete address in search. [https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-addressform](https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-addressform) -->
<!-- Icon at map center on results show page. -->


If its easy to share things w/in this app, they will-- create social circles.




Bizarre error crap when there's an error. WTF. That needs to be fixed.
Also, it sends users to /users?



There's got to be a way to query the Yelp API to infinite scroll through results (or at least load more results)

Load data so that I don't have to ping the database? (Just for demo?)

Something like "map loading" instead of blank page while the map is loading-- even a nice background image would be fine. But the blank page is extremely disconcerting.

Log in w/ FB.



User Leaflet for maps? [http://leafletjs.com/](http://leafletjs.com/)


* You locked yourself out of the Geocoding API. Good job, asshole. 

* Mission for 5/22/2014: Make sure that doesn't happen again.



### Searches

Pins for businesses-- click pin and sends you to business, or at leastshows you the business name

Fancy links for searches?

**searches aren't objects-- just calls a get method, etc. Users can save searches by saving the links to the searches.

Save searches automagically when user is logged in. Save 10 most recent searches (and that's it).



### Businesses

Fancy links for businesses?

/business/name-of-business-city-state

Businesses have lnks to Yelp if you want to review and Foursquare if you want to check-in.

Why am I getting an invalid array length when I get the biz JSON? Why do I have a yelp reviews model if I'll never get more than 1 review?

### Locations

From your location, should be able to see highest rated restaurants? 

Highest rated stuff comes up on root new search page? (Pins in the highest-rated stuff on the map?)



### Users

<!-- Add users. -->

* Users can 'favorite' businesses.

<!-- * Users can 'rate' businesses. -->




Keep track of 10 most recent searches. (Or maybe all searches made w/in 1 week?)

If its easy to share things w/in this app, they will-- create social circles.

Add Facebook login for users?


### Ratings

Users have ratings, restuarants have ratings, 

user_id | business_id | rating_number (int or float?)



### Production

SET HEROKU PRODUCTION VARS BEFORE PUSHING TO PRODUCTION



###V2?

Integrate 4square, better sorting of results.

Log in with FB.-- can you see friends? send friend recommendations?

Users can write reviews (that don't go on Yelp or 4square).
