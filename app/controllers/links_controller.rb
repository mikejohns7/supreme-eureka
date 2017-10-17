class LinksController < ApplicationController
    def forward
        @link = Link.find_by(code: params[:code])
        new_visit
        redirect_to @link.destination
    end

    # No referer found, and a visit is being created twice

    def new_visit
        Visit.create    host:               request.headers["Host"],
                        original_url:       request.original_url,
                        referer:            request.referer,
                        agent:              request.headers["User-Agent"],
                        dnt:                request.headers["DNT"],
                        link_id:            @link.id
    end
end
