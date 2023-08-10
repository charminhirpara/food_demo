# ActiveAdmin.register Food do

#   # See permitted parameters documentation:
#   # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#   #
#   # Uncomment all parameters which should be permitted for assignment
#   #
#   # permit_params :name, :description, :category_id, :mrp, :discount, :price
#   #
#   # or
#   #
#   # permit_params do
#   #   permitted = [:name, :description, :category_id, :mrp, :discount, :price]
#   #   permitted << :other if params[:action] == 'create' && current_user.admin?
#   #   permitted
#   # end
  
# end
ActiveAdmin.register Food do
  permit_params :name, :description, :category_id, :mrp, :discount, :price, images: []

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :category_id
    column :mrp
    column :discount
    column :price
 

    actions
  end

  filter :name
  filter :description
  filter :category_id
  filter :mrp
  filter :discount
  filter :price
  


  form do |f|
    f.inputs do
      f.input :name
      f.input :images, as: :file, input_html: { multiple: true}
      f.input :description
      f.input :category_id
      f.input :mrp
      f.input :discount
      f.input :price
    end
    f.actions
  end

end
