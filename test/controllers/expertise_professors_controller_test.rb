require 'test_helper'

class ExpertiseProfessorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expertise_professor = expertise_professors(:one)
  end

  test "should get index" do
    get expertise_professors_url
    assert_response :success
  end

  test "should get new" do
    get new_expertise_professor_url
    assert_response :success
  end

  test "should create expertise_professor" do
    assert_difference('ExpertiseProfessor.count') do
      post expertise_professors_url, params: { expertise_professor: { expertise_id: @expertise_professor.expertise_id, name: @expertise_professor.name, professor_id: @expertise_professor.professor_id } }
    end

    assert_redirected_to expertise_professor_url(ExpertiseProfessor.last)
  end

  test "should show expertise_professor" do
    get expertise_professor_url(@expertise_professor)
    assert_response :success
  end

  test "should get edit" do
    get edit_expertise_professor_url(@expertise_professor)
    assert_response :success
  end

  test "should update expertise_professor" do
    patch expertise_professor_url(@expertise_professor), params: { expertise_professor: { expertise_id: @expertise_professor.expertise_id, name: @expertise_professor.name, professor_id: @expertise_professor.professor_id } }
    assert_redirected_to expertise_professor_url(@expertise_professor)
  end

  test "should destroy expertise_professor" do
    assert_difference('ExpertiseProfessor.count', -1) do
      delete expertise_professor_url(@expertise_professor)
    end

    assert_redirected_to expertise_professors_url
  end
end
