class Store < ActiveRecord::Base
  has_many :employees, inverse_of: :store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :carry_apparel

  before_destroy :empty_store

  private

  def carry_apparel
    if !mens_apparel && !womens_apparel
      errors[:base] << "must carry at least one apparel"
    end
  end

  def empty_store
    if employees.size > 0
      errors[:base] << "store is not empty!"
      throw :abort
    end
  end
end
