class PagesController < ApplicationController
    def about
        @title = 'About Us';
        @content = "This is the Page content of About Us";
    end


end
