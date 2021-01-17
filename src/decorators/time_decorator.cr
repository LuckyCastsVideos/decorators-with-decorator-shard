class TimeDecorator < Decorator::Base
  decorates time : Time

  def pretty_date
    time.to_s("%Y-%m-%d")
  end
end
