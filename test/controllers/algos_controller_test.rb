require "test_helper"

class AlgosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @algo = algos(:one)
  end

  test "should get index" do
    get algos_url
    assert_response :success
  end

  test "should get new" do
    get new_algo_url
    assert_response :success
  end

  test "should create algo" do
    assert_difference("Algo.count") do
      post algos_url, params: { algo: { completed: @algo.completed, difficulty: @algo.difficulty, display_name: @algo.display_name, link_name: @algo.link_name, solution: @algo.solution, type_of: @algo.type_of } }
    end

    assert_redirected_to algo_url(Algo.last)
  end

  test "should show algo" do
    get algo_url(@algo)
    assert_response :success
  end

  test "should get edit" do
    get edit_algo_url(@algo)
    assert_response :success
  end

  test "should update algo" do
    patch algo_url(@algo), params: { algo: { completed: @algo.completed, difficulty: @algo.difficulty, display_name: @algo.display_name, link_name: @algo.link_name, solution: @algo.solution, type_of: @algo.type_of } }
    assert_redirected_to algo_url(@algo)
  end

  test "should destroy algo" do
    assert_difference("Algo.count", -1) do
      delete algo_url(@algo)
    end

    assert_redirected_to algos_url
  end
end
