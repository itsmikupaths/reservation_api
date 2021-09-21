class GuestSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :guest_count, :adult_count, :children_count, :infant_count
end
