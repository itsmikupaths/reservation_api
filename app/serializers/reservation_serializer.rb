class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :status, :start_date, :end_date, :payout_amount, :security_amount, :total_amount, :currency
  belongs_to :guest
end
