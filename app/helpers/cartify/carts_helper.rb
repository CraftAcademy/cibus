module Cartify
    module CartsHelper
      def add_to_cart(dish, qqty = 1, name = 'Add to cart')
        link_to name,
                cartify.order_items_path(order_item: { quantity: qqty, dish_id: dish&.id }),
                method: :post,
                remote: true,
                data: {turbolinks: false}
      end
  
      def checkout_link
        qty = current_order.order_items.reload.collect(&:quantity).compact.sum
        unless qty.zero?
          link_to 'Proceed to checkout', cartify.checkout_path, id: 'checkout-link'
        end
      end
    end
end
