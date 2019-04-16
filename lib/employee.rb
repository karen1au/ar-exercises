class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, inclusion: { in: 40..200}

  before_save :generate_password

  private
  
  def generate_password
    self.password = ([*('A'..'Z'),*(0..9),*('a'..'z')]).sample(8).join if password.blank?
  end
end
