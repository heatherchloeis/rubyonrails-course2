class Profile < ActiveRecord::Base
  belongs_to :user

  validate :boy_named_sue
  validate :first_or_last
  validates :gender, inclusion: { in: %w(female male) }

  def boy_named_sue
  	if gender == "male" && first_name == "Sue"
  		errors.add(:first_name, "A boy cannot be named Sue")
  	end
  end

  def first_or_last
  	if first_name.nil? && last_name.nil?
  		errors.add(:last_name, "A user profile must have either the first or last name set")
  	end
  end

  def self.get_all_profiles(min, max)
  	Profile.where("birth_year BETWEEN :min_year AND :max_year", min_year: min, max_year: max).order(birth_year: :asc)
  end
end
