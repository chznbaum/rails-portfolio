require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blog Posts"
  end

  # test "creating a Blog" do
  #   visit blogs_url
  #   click_on "New Blog"

  #   click_on "Create Blog"

  #   assert_text "Blog was successfully created"
  #   click_on "Back"
  # end

  # test "updating a Blog" do
  #   visit blogs_url
  #   click_on "Edit", match: :first

  #   click_on "Update Blog"

  #   assert_text "Blog was successfully updated"
  #   click_on "Back"
  # end

  # test "destroying a Blog" do
  #   visit blogs_url
  #   page.accept_confirm do
  #     click_on "Destroy", match: :first
  #   end

  #   assert_text "Blog was successfully destroyed"
  # end
end
