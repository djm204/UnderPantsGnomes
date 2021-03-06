ActiveAdmin.register Product do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :name, :description, :price, :stock_quantity, :category_id, :status, :image, :remove_image
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :category
      f.input :status
      f.input :image, label: 'Current Filename (read only)' , as: :string, input_html: { readonly: true }
      f.input :image
      f.input :remove_image, label: 'Remove product image?', as: :boolean, input_html: { checked: false }
      f.actions
    end
  end
end
