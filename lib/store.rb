
class MyValidator < ActiveModel::Validator
  def validate(store)
    unless store.mens_apparel = true || store.womens_apparel = true
      store.errors[:mens_apparel] << "Need one of  these to be true!"
    end
  end
end

class Person
  include ActiveModel::Validations
  validates_with MyValidator
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greather_than: 0 }
  validates_with MyValidator
  has_many :employees
end
