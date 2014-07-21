defmodule Eol do

  def start(), do: :odbc.start()

  def connect(driver_name, server_name, database_name, windows_authentication) do
    connection_string = 'Driver=#{driver_name};Server=#{server_name};Database=#{database_name};Trusted_Connection=#{windows_authentication};'
    :odbc.connect(connection_string,[])
  end

  def stop(), do: :odbc.stop()

end
