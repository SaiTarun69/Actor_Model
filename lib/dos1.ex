defmodule Dos1 do
    @moduledoc """ 
        Module used for computing the perfect squares that are sum of consecutive sqaures within a given limit of a particular length.It uses Actor Model that runs on multi-core machines
    """
    
    @doc """
        This method takes two arguments, one is the number(num) and the other is the length of the sequence(leg).Here it is used to create multiple processes for parallel execution
    """
	def pmap(num, leg) do
		me = self()
		Enum.map(1..num, fn (x) ->
			spawn_link fn -> (send me, { self(), perfSqar(x, leg)}) end
		   end)
		|> Enum.map(fn (pid) ->
			receive do 
				{ ^pid, result } ->
					if result do
						IO.inspect result
					end
			end
		   end)
	end
	
    @doc """
        This method is used to check for the perfect square sequence of the given number with the length provided. Here we are using sum of n squares formula n(n+1)(2n+1)/6 
    """
	def perfSqar(nums,remv) do
		x1=nums+remv-1
		y1=nums-1
		x=x1*(x1+1)*(2*x1+1)/6
		y=y1*(y1+1)*(2*y1+1)/6
		xsqrt=:math.sqrt(x-y)
		if xsqrt-Float.floor(xsqrt) == 0 do
			nums
		end
	end
	
    @doc """
        This is the main method which takes in values from the command prompt
    """
	def main(args\\[]) do
		{i,""}=Integer.parse(Enum.at(args,0))
		{j,""}=Integer.parse(Enum.at(args,1))
        pmap(i,j)
	end

end