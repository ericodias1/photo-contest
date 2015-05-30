class Admin::Contest < ActiveRecord::Base
  validates :title,               presence: true
  validates :description,         presence: true
  validates :folder,              presence: true
  validates :opening_enrollment,  presence: true
  validates :closing_enrollment,  presence: true
  validates :opening,             presence: true
  validates :closing,             presence: true

  validates :opening_enrollment,   date: { after_or_equal_to: Time.now, before: :closing_enrollment }
  validates :opening,              date: { after_or_equal_to: Time.now, before: :closing }
  validates :closing,              date: { after_or_equal_to: Time.now }
  validates :closing_enrollment,   date: { after_or_equal_to: Time.now }

end