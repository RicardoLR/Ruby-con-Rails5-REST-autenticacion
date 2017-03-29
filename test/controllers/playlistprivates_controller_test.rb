require 'test_helper'

class PlaylistprivatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlistprivate = playlistprivates(:one)
  end

  test "should get index" do
    get playlistprivates_url
    assert_response :success
  end

  test "should get new" do
    get new_playlistprivate_url
    assert_response :success
  end

  test "should create playlistprivate" do
    assert_difference('Playlistprivate.count') do
      post playlistprivates_url, params: { playlistprivate: { iduser: @playlistprivate.iduser, name: @playlistprivate.name, number_of_votes: @playlistprivate.number_of_votes } }
    end

    assert_redirected_to playlistprivate_url(Playlistprivate.last)
  end

  test "should show playlistprivate" do
    get playlistprivate_url(@playlistprivate)
    assert_response :success
  end

  test "should get edit" do
    get edit_playlistprivate_url(@playlistprivate)
    assert_response :success
  end

  test "should update playlistprivate" do
    patch playlistprivate_url(@playlistprivate), params: { playlistprivate: { iduser: @playlistprivate.iduser, name: @playlistprivate.name, number_of_votes: @playlistprivate.number_of_votes } }
    assert_redirected_to playlistprivate_url(@playlistprivate)
  end

  test "should destroy playlistprivate" do
    assert_difference('Playlistprivate.count', -1) do
      delete playlistprivate_url(@playlistprivate)
    end

    assert_redirected_to playlistprivates_url
  end
end
