defmodule Sample do
  use AsyncTask

  @timeout 1000
  @timeout_response "Hello, unknown!"
  task hello(name, timer \\ 10_000) do
    :timer.sleep(timer)
    "Hello #{name}!"
  end
end
