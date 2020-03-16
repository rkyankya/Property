# frozen_string_literal: true

require 'test_helper'

class PlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plot = plots(:one)
  end

  test 'should get index' do
    get plots_url
    assert_response :success
  end

  test 'should get new' do
    get new_plot_url
    assert_response :success
  end

  test 'should create plot' do
    assert_difference('Plot.count') do
      post plots_url, params: { plot: { address: @plot.address, bathrooms: @plot.bathrooms, name: @plot.name, price: @plot.price, rooms: @plot.rooms } }
    end

    assert_redirected_to plot_url(Plot.last)
  end

  test 'should show plot' do
    get plot_url(@plot)
    assert_response :success
  end

  test 'should get edit' do
    get edit_plot_url(@plot)
    assert_response :success
  end

  test 'should update plot' do
    patch plot_url(@plot), params: { plot: { address: @plot.address, bathrooms: @plot.bathrooms, name: @plot.name, price: @plot.price, rooms: @plot.rooms } }
    assert_redirected_to plot_url(@plot)
  end

  test 'should destroy plot' do
    assert_difference('Plot.count', -1) do
      delete plot_url(@plot)
    end

    assert_redirected_to plots_url
  end
end
