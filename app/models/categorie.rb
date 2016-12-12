class Categorie < ActiveRecord::Base
    validates :name, presence: true
    has_many :products, :dependent => :delete_all
    # has_many :products, :dependent => :cascade
    # has_many :products, :dependent => :nullify
end
