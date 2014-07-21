defmodule ConnectionString do
  defstruct driver: nil, 
    server: nil, 
    database: nil, 
    windows_authentication: false

  def get_connection_string(s), do: 'Driver=#{s.driver};Server=#{s.server};Database=#{s.database};Trusted_Connection=#{s.windows_authentication};'  
end
