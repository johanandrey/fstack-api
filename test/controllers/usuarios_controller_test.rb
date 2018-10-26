require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url, as: :json
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { apellido: @usuario.apellido, documento_identificacion: @usuario.documento_identificacion, email: @usuario.email, nombre: @usuario.nombre, password: 'secret', password_confirmation: 'secret', puntaje_disponible: @usuario.puntaje_disponible, puntaje_total: @usuario.puntaje_total, telefono: @usuario.telefono, tipo_documento_id: @usuario.tipo_documento_id } }, as: :json
    end

    assert_response 201
  end

  test "should show usuario" do
    get usuario_url(@usuario), as: :json
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { apellido: @usuario.apellido, documento_identificacion: @usuario.documento_identificacion, email: @usuario.email, nombre: @usuario.nombre, password: 'secret', password_confirmation: 'secret', puntaje_disponible: @usuario.puntaje_disponible, puntaje_total: @usuario.puntaje_total, telefono: @usuario.telefono, tipo_documento_id: @usuario.tipo_documento_id } }, as: :json
    assert_response 200
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario), as: :json
    end

    assert_response 204
  end
end
