class Coupon < ApplicationRecord
  belongs_to :admin_user, optional: true
  def self.ransackable_attributes(auth_object = nil)
    ["admin_user_id", "code", "created_at", "description", "discount", "expiration_date", "id", "id_value", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["admin_user"]
  end
end
