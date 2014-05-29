# TODO

Smooth scroll to the business tile when you hover over a marker on the search results page.
 
Look into caching for mobile-- my app is super slow on my phone.












Later, V2

Recommendation System:

Recommend based on categories, number of Yelp reviews (< 100, 100-500, 500-1000, > 1000), and number of stars (+/- 0.5).

Need categories model, catrgories join table. Probably will need to reset DB.

Generate 1 recommendation each time the user logs in. Post it in their feed.


























* Feed should look better.

* In fact, user profile should look better.

* Businesses should have hours of operation. Probably need to scrape Yelp for that.





_You locked yourself out of the Geocoding API on 5/21/2014 for 24 hrs. Good job, asshole._ 


### Searches


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


