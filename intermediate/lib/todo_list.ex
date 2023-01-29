defmodule TodoList do
  def init do
    pid = spawn_link(fn -> main_loop([]) end)
    send(pid, {:add, "eat"})
    pid
  end

  def main_loop(list) do
    receive do
      {:add, todo} ->
        list ++ [todo]
        IO.puts("Added todo: #{todo}")
        main_loop(list)

      {:print} ->
        IO.puts("Current list: #{Enum.at(list, 0)}")
        main_loop(list)
    end
  end
end
