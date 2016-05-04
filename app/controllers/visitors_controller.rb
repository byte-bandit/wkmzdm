class VisitorsController < ApplicationController
    def create
        @visit = Visit.find(params[:visit_id])
        @visit.visitors.create(visitor_params)
        redirect_to visits_url
    end

    private
    def visitor_params
        params.require(:visitor).permit(:name, :email, :coming, :driver)
    end
end
