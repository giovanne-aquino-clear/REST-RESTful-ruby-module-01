class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city
  elongs_to :contact do
    link(:related) { contact_address_url(object.contact.id) }
    
  end
end