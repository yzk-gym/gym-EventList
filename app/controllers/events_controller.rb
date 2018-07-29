class EventsController < ApplicationController

  def event
    @info = EventSearcher.some_month_event?
  end
end