class Product < ActiveRecord::Base
    validates :name, presence: true, length: { in: 1..20 }
    validates :price, presence: true, :numericality  => { :greater_than => 0 }
    belongs_to :categorie
end
