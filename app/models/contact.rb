class Contact < ApplicationRecord
  belongs_to :kind, optional:true
  has_many :phones
  
  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address, update_only:true

  def as_json(options={})
    h = super(options)
    h
  end
end