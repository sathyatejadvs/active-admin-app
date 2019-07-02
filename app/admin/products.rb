ActiveAdmin.register Product do

  permit_params :title, :release_date, :price, :category_id, :description

  index do
    column :title
    column :release_date
    column 'Category', :category_id, sortable: true do |product|
      link_to product.category.name, admin_category_path(product.category)
    end 
    column 'Price in $', :price, sortable: true do |product|
      div class: 'price' do
        number_to_currency(product.price)
      end
    end
 end


end
