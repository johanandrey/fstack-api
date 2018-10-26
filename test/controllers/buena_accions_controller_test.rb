require 'test_helper'

class BuenaAccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buena_accion = buena_accions(:one)
  end

  test "should get index" do
    get buena_accions_url, as: :json
    assert_response :success
  end

  test "should create buena_accion" do
    assert_difference('BuenaAccion.count') do
      post buena_accions_url, params: { buena_accion: { descripcion: @buena_accion.descripcion, puntaje: @buena_accion.puntaje, receptop_id: @buena_accion.receptop_id, remitente_id: @buena_accion.remitente_id } }, as: :json
    end

    assert_response 201
  end

  test "should show buena_accion" do
    get buena_accion_url(@buena_accion), as: :json
    assert_response :success
  end

  test "should update buena_accion" do
    patch buena_accion_url(@buena_accion), params: { buena_accion: { descripcion: @buena_accion.descripcion, puntaje: @buena_accion.puntaje, receptop_id: @buena_accion.receptop_id, remitente_id: @buena_accion.remitente_id } }, as: :json
    assert_response 200
  end

  test "should destroy buena_accion" do
    assert_difference('BuenaAccion.count', -1) do
      delete buena_accion_url(@buena_accion), as: :json
    end

    assert_response 204
  end
end
