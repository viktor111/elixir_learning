defmodule Basics do
  def add_two_numbers_piping() do
    num1 = IO.gets("Enter a number: ") |> String.trim() |> String.to_integer()
    num2 = IO.gets("Enter another number: ") |> String.trim() |> String.to_integer()

    IO.puts("The sum of the two numbers is #{num1 + num2}")
  end

  def for_loop_over_list() do
    names = ["Heisenberg", "Potter", "Buddy"]

    for name <- names do
      IO.puts(name)
    end
  end

  def each_loop_over_list() do
    names = ["Heisenberg", "Potter", "Buddy"]

    Enum.each(names, fn name ->
      IO.puts(name)
    end)
  end

  def recursion_loop_list() do
    names = ["Heisenberg", "Potter", "Buddy"]

    recursive_loop(names, 0)
  end

  def recursive_loop(list, index) when index < length(list) do
    IO.puts(Enum.at(list, index))
    recursive_loop(list, index + 1)
  end

  def recursive_loop(list, index) do
    # when index is out of range
  end

  def send_http_get() do
    :inets.start()
    :ssl.start()

    url = 'https://jsonplaceholder.typicode.com/todos/'
    headers = [{'accept', 'application/json'}]

    http_request_opts = [
      ssl: [
        verify: :verify_peer,
        cacerts: :public_key.cacerts_get(),
        customize_hostname_check: [
          match_fun: :public_key.pkix_verify_hostname_match_fun(:https)
        ]
      ]
    ]

    :httpc.request(:get, {url, headers}, http_request_opts, [])

  end

  def send_http_post() do
    :inets.start()
    :ssl.start()

    url = 'https://httpbin.org/post'
    headers = []
    content_type = ''
    body = ''

    http_request_opts = [
      ssl: [
        verify: :verify_peer,
        cacerts: :public_key.cacerts_get(),
        customize_hostname_check: [
          match_fun: :public_key.pkix_verify_hostname_match_fun(:https)
        ]
      ]
    ]

    :httpc.request(:post, {url, headers, content_type, body}, http_request_opts, [])
  end
end
