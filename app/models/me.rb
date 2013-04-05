class Me < ActiveRecord::Base
  include ActiveRecord::Singleton

  def name
    "Nathan Lilienthal"
  end

  def birthday
    Date.new(1993, 3, 12)
  end

  def age
    now = Time.now.utc.to_date
    now.year - birthday.year - (
      (now.month > birthday.month ||
                   (now.month == birthday.month && now.day >= birthday.day)
      ) ? 0 : 1)
  end

end
