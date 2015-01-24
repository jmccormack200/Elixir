#Used for convenience in specifying the other functions
defmodule Combined do
	import Convert
	def height_to_mph(meters) do #takes meters, returns mph
		Drop.fall_velocity(meters) |> mps_to_mph
	end
end
