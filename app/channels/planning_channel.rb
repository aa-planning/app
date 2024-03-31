class PlanningChannel < ApplicationCable::Channel
  def subscribed
    stream_from "planning_channel"
    binding.pry
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
