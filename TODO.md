# TODO

5/24/2014
Users can have friends, 'friend' other users.

Businesses should have hours of operation.

Feed should look better.

In fact, user profile should look better.



5/23/2014

Users can favorite busineses.

On biz show:

  * heart that on click either creates or destroys a favorite via jQuery.

On user profile:

  * list of businesses that they've favorited
  
  * list of businesses that they've rated (and their rating)



_You locked yourself out of the Geocoding API on 5/21/2014 for 24 hrs. Good job, asshole._ 


### Searches

Save searches automagically when user is logged in. Save 10 most recent searches (and that's it).



Fancy links for searches?

**searches aren't objects-- just calls a get method, etc. Users can save searches by saving the links to the searches.




### Businesses

Avg. rating, user's rating, favorite.



Fancy links for businesses?

/business/name-of-business-city-state

Businesses have links <!-- to Yelp if you want to review and --> Foursquare if you want to check-in.

Why am I getting an invalid array length when I get the biz JSON? Why do I have a yelp reviews model if I'll never get more than 1 review?


### Users

<!-- Add users. -->

* Users can 'favorite' businesses.

<!-- * Users can 'rate' businesses. -->

Users have friends, can recommend businesses, users can see friends' activity (feed).

Find similar users! Kth nearest neighbor based on ratings and favorites. Businesses have categories.


Keep track of 10 most recent searches. (Or maybe all searches made w/in 1 week?)

If its easy to share things w/in this app, they will-- create social circles.


* Add guest login.

### Ratings




### Production

SET HEROKU PRODUCTION VARS BEFORE PUSHING TO PRODUCTION



###V2?

Integrate 4square, better sorting of results.

Log in with FB.-- can you see friends? send friend recommendations?

Users can write reviews (that don't go on Yelp or 4square).

From your location, should be able to see highest rated restaurants? 

Highest rated stuff comes up on root new search page? (Pins in the highest-rated stuff on the map?)

There's got to be a way to query the Yelp API to infinite scroll through results (or at least load more results)

Load data so that I don't have to ping the database? (Just for demo?)


User Leaflet for maps? [http://leafletjs.com/](http://leafletjs.com/)