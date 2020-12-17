class WorkdaysController < ApplicationController

  def month
    # 現在の曜日と年月日
    date_now = Date.current

    @weeks = ["日", "月", "火", "水", "木", "金", "土"]

    firstDay = date_now.beginning_of_month
    firstDayIndex = firstDay.wday
    @calender = Array.new(35){|i| firstDay + (i - firstDayIndex)}
  end

  def week
    date_now = Date.current
    @weeks = ["日", "月", "火", "水", "木", "金", "土"]

    this_monday = date_now - (date_now.wday - 1)
    @week_calender = Array.new(7){|i| this_monday + i}
  end

  def day
    @date_now = Date.current

    @time = 27.times.map.each_with_index {|i| Time.parse("9:00")+30.minutes*i}
  end
end
