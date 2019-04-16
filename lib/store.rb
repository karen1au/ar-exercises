class Store < ActiveRecord::Base
  has_many :employees, inverse_of: :store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :carry_apparel
  
  def carry_apparel
    if !mens_apparel && !womens_apparel
      errors[:base] << "must carry at least one apparel"
    end
  end
end
