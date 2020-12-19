class WorkdaysController < ApplicationController

  def month

    if params[:n].present?
      @x = params[:n].to_i + 1
    elsif params[:p].present?
      @x = params[:p].to_i - 1
    else
      @x = 0
    end

    # 現在の曜日と年月日
    @date_now = Date.current.months_since(@x)

    @weeks = ["日", "月", "火", "水", "木", "金", "土"]

    firstDay = @date_now.beginning_of_month
    firstDayIndex = firstDay.wday
    @calender = Array.new(35){|i| firstDay + (i - firstDayIndex)}

    @workers = Worker.all

    @work_lists = Worklist.all

  end

  def week

    if params[:n].present?
      @x = params[:n].to_i + 1
    elsif params[:p].present?
      @x = params[:p].to_i - 1
    else
      @x = 0
    end

    @date_now = Date.current.weeks_since(@x)
    @weeks = ["日", "月", "火", "水", "木", "金", "土"]

    this_monday = @date_now - (@date_now.wday - 1)
    @week_calender = Array.new(7){|i| this_monday + i}

    @places_lists = Place.all

  end

  def day

    if params[:n].present?
      @x = params[:n].to_i + 1
    elsif params[:p].present?
      @x = params[:p].to_i - 1
    else
      @x = 0
    end

    @date_now = Date.current.days_since(@x)

    @time = 27.times.map.each_with_index {|i| Time.parse("9:00")+30.minutes*i}
    @workers = Worker.all

  end
end
