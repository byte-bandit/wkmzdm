class VisitsController < ApplicationController
    def index
        @visit = Visit.last
    end
end
