defmodule Dividasaurus.SampleTest do
  use Dividasaurus.ConnCase

  # Import Hound helpers
  use Hound.Helpers

  # Start a Hound session
  hound_session

  test "GET /" do
    navigate_to "/"
    signin_element = find_element(:class, "signin")
    signup_element = find_element(:class, "signup")
    assert element_displayed?(signin_element)
    assert element_displayed?(signup_element)
  end

  test "link to signup page" do
    navigate_to "/"
    find_element(:class, "signup")
      |> click
  end
end
