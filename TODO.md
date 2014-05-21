# TODO

There's got to be a way to query the Yelp API to infinite scroll through results (or at least load more results)

Load data so that I don't have to ping the database? (Just for demo?)

Something like "map loading" instead of blank page while the map is loading-- even a nice background image would be fine. But the blank page is extremely disconcerting.

Log in w/ FB.





### Searches

Pins for businesses-- click pin and sends you to business, or at leastshows you the business name

Fancy links for searches?

**searches aren't objects-- just calls a get method, etc. Users can save searches by saving the links to the searches.

Save searches automagically when user is logged in. Save 10 most recent searches (and that's it).

### Businesses

Fancy links for businesses?

/business/name-of-business-city-state

Businesses have lnks to Yelp if you want to review and Foursquare if you want to check-in.

### Locations

From your location, should be able to see highest rated restaurants? 

Highest rated stuff comes up on root new search page? (Pins in the highest-rated stuff on the map?)


### Users

<!-- Add users. -->

* Users have ratings which are different from the Yelp ratings -> ratings model?

Add Facebook login for users?

Users can save searches-- keep track of frequent searches?


### Ratings

Users have ratings, restuarants have ratings, 

user_id | business_id | rating_number (int or float?)

#### Reviews?

Users can write reviews-- (that don't go on Yelp)

### Production

SET HEROKU PRODUCTION VARS BEFORE PUSHING TO PRODUCTION



###V2?

Integrate 4square, better sorting of results.

Log in with FB.-- can you see friends? send friend recommendations?
