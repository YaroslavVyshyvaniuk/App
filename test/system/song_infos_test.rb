require "application_system_test_case"

class SongInfosTest < ApplicationSystemTestCase
  setup do
    @song_info = song_infos(:one)
  end

  test "visiting the index" do
    visit song_infos_url
    assert_selector "h1", text: "Song Infos"
  end

  test "creating a Song info" do
    visit song_infos_url
    click_on "New Song Info"

    fill_in "Date", with: @song_info.date
    fill_in "Duration", with: @song_info.duration
    fill_in "Song", with: @song_info.song_id
    click_on "Create Song info"

    assert_text "Song info was successfully created"
    click_on "Back"
  end

  test "updating a Song info" do
    visit song_infos_url
    click_on "Edit", match: :first

    fill_in "Date", with: @song_info.date
    fill_in "Duration", with: @song_info.duration
    fill_in "Song", with: @song_info.song_id
    click_on "Update Song info"

    assert_text "Song info was successfully updated"
    click_on "Back"
  end

  test "destroying a Song info" do
    visit song_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Song info was successfully destroyed"
  end
end
