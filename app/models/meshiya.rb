class Meshiya < ActiveRecord::Base
  scope :opening, -> time {
    a = Meshiya.arel_table[:open].lt(time)
    b = Meshiya.arel_table[:close].gt(time)
    x = Meshiya.arel_table[:open].gt(Meshiya.arel_table[:close])
    y = Meshiya.arel_table[:open].eq(Meshiya.arel_table[:close])

    where( (a.and b).or( x.and( a.or b )).or y )
  }

  def self.opening_list
    require 'tod/core_extensions'

    now_utc = Time.now.utc.to_time_of_day.on Date.new 2000,1,1
    Meshiya.opening(now_utc)
  end
end
