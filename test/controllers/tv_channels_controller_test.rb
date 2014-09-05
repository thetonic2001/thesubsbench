require 'test_helper'

class TvChannelsControllerTest < ActionController::TestCase
  setup do
    @tv_channel = tv_channels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_channels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_channel" do
    assert_difference('TvChannel.count') do
      post :create, tv_channel: { bt: @tv_channel.bt, freeview: @tv_channel.freeview, hd: @tv_channel.hd, name: @tv_channel.name, rights_held: @tv_channel.rights_held, sky: @tv_channel.sky, virgin: @tv_channel.virgin, weblink: @tv_channel.weblink, youview: @tv_channel.youview }
    end

    assert_redirected_to tv_channel_path(assigns(:tv_channel))
  end

  test "should show tv_channel" do
    get :show, id: @tv_channel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv_channel
    assert_response :success
  end

  test "should update tv_channel" do
    patch :update, id: @tv_channel, tv_channel: { bt: @tv_channel.bt, freeview: @tv_channel.freeview, hd: @tv_channel.hd, name: @tv_channel.name, rights_held: @tv_channel.rights_held, sky: @tv_channel.sky, virgin: @tv_channel.virgin, weblink: @tv_channel.weblink, youview: @tv_channel.youview }
    assert_redirected_to tv_channel_path(assigns(:tv_channel))
  end

  test "should destroy tv_channel" do
    assert_difference('TvChannel.count', -1) do
      delete :destroy, id: @tv_channel
    end

    assert_redirected_to tv_channels_path
  end
end
