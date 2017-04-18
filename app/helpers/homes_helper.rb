module HomesHelper
  def home_age(date)
    if date < 30.days.ago
      return "old_home"
    elsif date >= 2.days.ago
      return "new_home"
    else
      return "standard_home"
    end
  end
end
