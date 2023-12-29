ActiveAdmin.register Coupon do
  permit_params :code, :description, :discount, :expiration_date, :admin_user_id

  index do
    selectable_column
    id_column
    column :code
    column :description
    column :discount
    column :expiration_date
    column :admin_user_id
    actions
    column 'Admin email' do |coupon|
      coupon.admin_user.email if coupon.admin_user
    end
    column 'Admin id' do |coupon|
      coupon.admin_user.id if coupon.admin_user
    end
  end
  filter :code
  

  form do |f|
    f.inputs "Coupon Details" do
      f.input :code
      f.input :description
      f.input :discount
      f.input :expiration_date
      f.input :admin_user_id, as: :select, collection: AdminUser.pluck(:email, :id)
    end
    f.actions
  end
end
