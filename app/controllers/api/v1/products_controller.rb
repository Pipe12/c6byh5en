module Api
  module V1
    class ProductsController < ApplicationController
      skip_before_filter :verify_authenticity_token

      def index
        products = Product.all
        render json: {data: products}, status: :ok
      end

      def create
        product = Product.new(product_params)

        if product.save
          render json: {
            status: "Success",
            data: product
          }, status: :ok
        else
          render json: {
            status: "Unsaved product",
            data: product.errors
          }, status: :unprocessable_entity
        end
      end

      def update
        product = Product.find(params[:id])

        if product.update(product_params)
          render json: {
            status: "Success",
            data: product
          }, status: :ok
        else
          render json: {
            status: "Not updated product",
            data: product.errors
          }, status: :unprocessable_entity
        end
      end

      private
        def product_params
          params.require(:product).permit(:name, :price)
        end
    end
  end
end
