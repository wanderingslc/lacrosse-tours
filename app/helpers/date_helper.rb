module DateHelper
  def human_date(date)
    date.strftime("%A ")
    
  end

  def human_date_time(date)
    time_tag(date)
  end

end