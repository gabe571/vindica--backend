require "json"
require "optparse"

class YelpsController < ApplicationController   
def search
  response = RestClient.get("https://api.yelp.com/v3/businesses/search?term=cafe&location=seattle&limit=50", headers={ Authorization: "Bearer #{ENV["YELP_API_KEY"]}", "x-requested-with": "xmlhttprequest", "Access-Control-Allow-Origin": "*",Accept: 'application/json'})
 results = JSON.parse(response)
 render json: results  
end
end