class WorkdaysController < ApplicationController

  def month
    # 現在の曜日と年月日
    date_now = Date.current

    @weeks = ["日", "月", "火", "水", "木", "金", "土"]

    firstDay = date_now.beginning_of_month
    firstDayIndex = firstDay.wday
    @calender = Array.new(35){|i|i}.map{ |i| firstDay + (i-firstDayIndex)}
    @workers = Worker.all
  end

  def week
    # code
  end

  def day
    # code
  end
end
