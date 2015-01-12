class EventObserver < ActiveRecord::Observer

  def after_create(event)
    Rails.logger.debug("\n\n\n An observer is observing your event! \n\n\n")
  end

end