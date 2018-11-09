# Dos1

Group Members: 
---------------
Sai Tarun Damacharla (UFID: 4174-0254)
Varun Reddy Regalla (UFID: 4143-6018)

The goal of the project is to compute the perfect squares that are sum of consecutive sqaures within a given limit of a particular length.

Instruction to run code:
------------------------
mix escript.build
time ./dos1 n k     The above commands are for Ubuntu OS

The output displayed is the initial number of each sequence whose sum of squares is a perfect square.

Size of the work unit:
-----------------------
We have used N number of processes for the given N values, so each process carries out one computation. By this we have reduced the run time as much as possible.

    Result of running the program:
------------------------------
There is no sequence of length 4 whose sum of squares is a perfect square

Running Time for the application:
---------------------------------
Running Time = (User time + System Time)/Real Time
			 = (25.901+1.515)/9.667
			 = 2.836
(Refer to Result.png)

Largest problem that we managed to solve in reasonable time:
-------------------------------------------------------------
10000000 2


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `dos1` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:dos1, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/dos1](https://hexdocs.pm/dos1).

