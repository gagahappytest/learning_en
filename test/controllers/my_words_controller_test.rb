require 'test_helper'

class MyWordsControllerTest < ActionController::TestCase
  setup do
    @my_word = my_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_word" do
    assert_difference('MyWord.count') do
      post :create, my_word: { add_time: @my_word.add_time, explain: @my_word.explain, search_times: @my_word.search_times, soundmark: @my_word.soundmark, word: @my_word.word }
    end

    assert_redirected_to my_word_path(assigns(:my_word))
  end

  test "should show my_word" do
    get :show, id: @my_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_word
    assert_response :success
  end

  test "should update my_word" do
    patch :update, id: @my_word, my_word: { add_time: @my_word.add_time, explain: @my_word.explain, search_times: @my_word.search_times, soundmark: @my_word.soundmark, word: @my_word.word }
    assert_redirected_to my_word_path(assigns(:my_word))
  end

  test "should destroy my_word" do
    assert_difference('MyWord.count', -1) do
      delete :destroy, id: @my_word
    end

    assert_redirected_to my_words_path
  end
end
