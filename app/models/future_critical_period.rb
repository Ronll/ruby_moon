# Future critical period model.
# It is like a CriticalPeriod, but describes predicted period in future.
# Also it's less complicated.
class FutureCriticalPeriod
  include UserPeriodConcern

  scope :upcoming, -> (date) { order_by(:from => 'asc').where(:from.gt => date) }
end