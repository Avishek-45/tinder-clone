class BrowseController < ApplicationController

    def browse
        @users =Account.all
    end

    def approve
        #user swipes right
    end

    def decline
        #user swipes left
    end

end