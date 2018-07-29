class EventSearcher
  class << self
    def some_month_event?
      Event.active.where(:month => Date.today.month + 1)
    end
  end
end