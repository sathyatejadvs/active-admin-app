class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:title, :price, :category_id, :release_date, :description)
    end

end
