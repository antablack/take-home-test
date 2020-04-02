require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should save favorite_photos" do
    post "/api/favorite-photos", 
        params: {photoId: "11010101", url: "http://www.image.com"}
    assert_response :success
  end

  test "should not save favorite_photos" do
    post "/api/favorite-photos", 
        params: {url: "http://www.image.com"}
    assert_response 400
  end


  test "should save get_favorite_photos" do
    get "/api/favorite-photos"
    assert_response :success
  end

  #test "should not load search" do
  #  get "/search"
  #  assert_response 500
  #end

  test "should load search" do
    get "/search",
        params: {q: ""}
    assert_response :success
  end

  test "should  load photos" do
    get "/"
    assert_response :success
  end

end
