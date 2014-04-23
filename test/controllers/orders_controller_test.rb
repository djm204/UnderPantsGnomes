require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { customer_id: @order.customer_id, line_item_id_id: @order.line_item_id_id, status: @order.status, taxes: @order.taxes }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { customer_id: @order.customer_id, line_item_id_id: @order.line_item_id_id, status: @order.status, taxes: @order.taxes }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
  
  def test_adding
  assert_difference(CartItem, :count) do 
    post :add, :id => 4
  end

  assert_response :redirect 
  assert_redirected_to :controller => "catalog"
  assert_equal 1, Order.find(@request.session[:order_id]).line_items.size
  end
end
