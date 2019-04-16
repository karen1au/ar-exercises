class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, inclusion: { in: 40..200}

  after_create :generate_password

  private
  
  def generate_password
    pw = ([*('A'..'Z'),*(0..9),*('a'..'z')]).sample(8).join
    self.update(password: pw )  
  end
end
