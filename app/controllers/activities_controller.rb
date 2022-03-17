class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

def index
    activities = Activity.all
    render json: activities
end

def show
    activity = Activity.find(params[:id])
    render json: activity
end

def destroy
    activity = find_activities
    activity.destroy
    head :no_content
end


private

def find_activities
    Activity.find(params[:id])

def render_not_found_response
    render json: {error: "Activity not found"}, status: :not_found
end

end
