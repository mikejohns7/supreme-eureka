class LinksController < ApplicationController

    def forward
        @link = Link.find_by(string: params[:string])
        # Create a visit and log the referring site
        redirect_to @link.destination
    end

end
