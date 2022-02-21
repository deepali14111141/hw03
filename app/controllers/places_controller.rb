class PlacesController < ApplicationController
    def index
        @places = ["Mumbai", "Manhattan", "Paris", "Miami"] 
    end
end