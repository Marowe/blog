require 'test_helper'

class TematsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temat = temats(:one)
  end

  test "should get index" do
    get temats_url
    assert_response :success
  end

  test "should get new" do
    get new_temat_url
    assert_response :success
  end

  test "should create temat" do
    assert_difference('Temat.count') do
      post temats_url, params: { temat: {  } }
    end

    assert_redirected_to temat_url(Temat.last)
  end

  test "should show temat" do
    get temat_url(@temat)
    assert_response :success
  end

  test "should get edit" do
    get edit_temat_url(@temat)
    assert_response :success
  end

  test "should update temat" do
    patch temat_url(@temat), params: { temat: {  } }
    assert_redirected_to temat_url(@temat)
  end

  test "should destroy temat" do
    assert_difference('Temat.count', -1) do
      delete temat_url(@temat)
    end

    assert_redirected_to temats_url
  end
end
