class EventsController < ApplicationController
  def index
    @event = Event.new
    @events = Event.all
  end
  def show
    @event = Event.find(params[:id])
  end
  def create
    @event = Event.new(event_params)
    @event.creator = current_user
    if @event.save
      flash[:notice] = "Event created successfully"
      redirect_to @event
    else
      flash[:notice] = "Failed to create event"
      @events = Event.all
      render :index, status: :unprocessable_entity
    end
  end

private
  def event_params
    params.expect(event: [:name, :description, :time, :location])
  end
end
