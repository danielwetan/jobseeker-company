require "test_helper"

class AssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get assets_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_url
    assert_response :success
  end

  test "should create asset" do
    assert_difference("Asset.count") do
      post assets_url, params: { asset: { category_id: @asset.category_id, manufacturer_id: @asset.manufacturer_id, name: @asset.name, notes: @asset.notes, order_serial: @asset.order_serial, purchase_cost: @asset.purchase_cost, purchase_date: @asset.purchase_date, status: @asset.status, user_id: @asset.user_id } }
    end

    assert_redirected_to asset_url(Asset.last)
  end

  test "should show asset" do
    get asset_url(@asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_url(@asset)
    assert_response :success
  end

  test "should update asset" do
    patch asset_url(@asset), params: { asset: { category_id: @asset.category_id, manufacturer_id: @asset.manufacturer_id, name: @asset.name, notes: @asset.notes, order_serial: @asset.order_serial, purchase_cost: @asset.purchase_cost, purchase_date: @asset.purchase_date, status: @asset.status, user_id: @asset.user_id } }
    assert_redirected_to asset_url(@asset)
  end

  test "should destroy asset" do
    assert_difference("Asset.count", -1) do
      delete asset_url(@asset)
    end

    assert_redirected_to assets_url
  end
end
