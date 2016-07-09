
-- bigger stack sizes

local StackSize = 1000
local factor_default = 10
local factor_barrel = 25

for _,dat in pairs(data.raw) do
   	for _,items in pairs(dat) do
      	if items.stack_size and items.stack_size > 1 and items.stack_size < StackSize then
           	if items.stack_size * factor_default < StackSize then
				if string.find(items.name, "barrel") then
					items.stack_size = items.stack_size * factor_barrel
				else
					items.stack_size = items.stack_size * factor_default
				end
			else
				items.stack_size = StackSize
			end
      	end
   	end
end