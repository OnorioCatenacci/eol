defmodule Eol do
  import ConnectionString
  def start(), do: :odbc.start()

  def connect(driver_name, server_name, database_name, windows_authentication) do
    s = %ConnectionString{driver: driver_name, server: server_name, database: database_name, windows_authentication: windows_authentication}
    :odbc.connect(get_connection_string(s),[])
  end

  def stop(), do: :odbc.stop()

end
