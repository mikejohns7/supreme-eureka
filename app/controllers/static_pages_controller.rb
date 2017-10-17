class StaticPagesController < ApplicationController

    def home
        @home = request.headers
    end

    def login
    end

end
