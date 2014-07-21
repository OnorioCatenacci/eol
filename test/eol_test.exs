defmodule EolTest do
  use ExUnit.Case
    @driver_name "{SQL Server}"
    @server_name "(local)"
    @database_name "TNM"
    @windows_authentication true 

  test "An attempt to connect with a non-existent driver should return an error" do
    Eol.start
    assert {:error,_} = Eol.connect("DriverDoesNotExist","#{@server_name}","#{@database_name}","#{@windows_authentication}")
    Eol.stop
  end

  test "An attempt to connect to a non-existent server returns an error" do
    Eol.start
    assert {:error, _} = Eol.connect("#{@driver_name}","ServerDoesNotExist","#{@database_name}","#{@windows_authentication}")
    Eol.stop
  end

  test "An attempt to connect to a good server should return ok" do
    Eol.start
    assert {:ok, _} = Eol.connect("#{@driver_name}","#{@server_name}","#{@database_name}","#{@windows_authentication}")
    Eol.stop
  end
end
