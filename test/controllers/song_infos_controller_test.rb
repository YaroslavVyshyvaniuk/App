require 'test_helper'

class SongInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song_info = song_infos(:one)
  end

  test "should get index" do
    get song_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_song_info_url
    assert_response :success
  end

  test "should create song_info" do
    assert_difference('SongInfo.count') do
      post song_infos_url, params: { song_info: { date: @song_info.date, duration: @song_info.duration, song_id: @song_info.song_id } }
    end

    assert_redirected_to song_info_url(SongInfo.last)
  end

  test "should show song_info" do
    get song_info_url(@song_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_info_url(@song_info)
    assert_response :success
  end

  test "should update song_info" do
    patch song_info_url(@song_info), params: { song_info: { date: @song_info.date, duration: @song_info.duration, song_id: @song_info.song_id } }
    assert_redirected_to song_info_url(@song_info)
  end

  test "should destroy song_info" do
    assert_difference('SongInfo.count', -1) do
      delete song_info_url(@song_info)
    end

    assert_redirected_to song_infos_url
  end
end
