class EventRecordsController < ApplicationController
  def create
    @EventRecord = EventRecord.new()
    @EventRecord.user_id = params[:user_id]
    @EventRecord.event_id = params[:event_id]
    @Event = Event.find(params[:event_id])
    if @EventRecord.save
      flash[:notice] = "Successfully signed up for " + @Event.name
      redirect_to event_path(@Event)
    else
      flash[:notice] = "Failed to sign up for " + @Event.name
      flash[:notice] += @EventRecord.errors.full_messages.to_s
      redirect_to event_path(@Event)
    end
  end
end
