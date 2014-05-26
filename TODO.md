# TODO

5/26/2014


<!-- Users should have a friends tile under their picture, next to their feed. --> <!-- In this tile, friend requests should be at the top.  -->

<!-- Activity (all favorites, ratings, and 10 recent searches, in newest-to-oldest) should be its own page. -->

<!-- When someone “friend”s you, you can approve the friend request, and then the relationship is created? -->

<!-- * Search for users by username or email(?). -->

<!-- * Search for businesses by category. -->


<!-- * Sign up link on log in page. -->



<!-- * Why are the user profile and feed broken on my phone? -->


Business name search can search for multiple words and narrows down by intersection.



* Yelp map centers over the bay for less common searches. Can I fix that?


* Feed should look better.

* In fact, user profile should look better.

* Businesses should have hours of operation. Probably need to scrape Yelp for that.





_You locked yourself out of the Geocoding API on 5/21/2014 for 24 hrs. Good job, asshole._ 


### Searches

Save searches automagically when user is logged in. Save 10 most recent searches (and that's it).



Fancy links for searches?

**searches aren't objects-- just calls a get method, etc. Users can save searches by saving the links to the searches.




### Businesses

Avg. rating, user's rating, favorite.




Businesses have links <!-- to Yelp if you want to review and --> Foursquare if you want to check-in.

Why am I getting an invalid array length when I get the biz JSON? Why do I have a yelp reviews model if I'll never get more than 1 review?


### Users

* Users can recommend businesses to their friends?



Find similar users! Kth nearest neighbor based on ratings and favorites. Businesses have categories.



If its easy to share things w/in this app, they will-- create social circles.


* Add guest login? Maybe just tell them to log in as me?

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