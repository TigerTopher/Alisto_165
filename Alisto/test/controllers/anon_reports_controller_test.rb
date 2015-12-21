require 'test_helper'

class AnonReportsControllerTest < ActionController::TestCase
  setup do
    @anon_report = anon_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anon_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anon_report" do
    assert_difference('AnonReport.count') do
      post :create, anon_report: { classification: @anon_report.classification, coordinate_x: @anon_report.coordinate_x, coordinate_y: @anon_report.coordinate_y, date_issued: @anon_report.date_issued, full_report: @anon_report.full_report, short_desc: @anon_report.short_desc, title: @anon_report.title }
    end

    assert_redirected_to anon_report_path(assigns(:anon_report))
  end

  test "should show anon_report" do
    get :show, id: @anon_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anon_report
    assert_response :success
  end

  test "should update anon_report" do
    patch :update, id: @anon_report, anon_report: { classification: @anon_report.classification, coordinate_x: @anon_report.coordinate_x, coordinate_y: @anon_report.coordinate_y, date_issued: @anon_report.date_issued, full_report: @anon_report.full_report, short_desc: @anon_report.short_desc, title: @anon_report.title }
    assert_redirected_to anon_report_path(assigns(:anon_report))
  end

  test "should destroy anon_report" do
    assert_difference('AnonReport.count', -1) do
      delete :destroy, id: @anon_report
    end

    assert_redirected_to anon_reports_path
  end
end
