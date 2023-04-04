defmodule TestWeb.TestController do
  use TestWeb, :controller

  def test(conn, _params) do
    try do
      DoesNotExist.for_sure()
    rescue
      exception ->
        Rollbax.report(:error, exception, System.stacktrace())
    end
  end
end
