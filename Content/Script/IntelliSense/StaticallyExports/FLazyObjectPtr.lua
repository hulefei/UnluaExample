---@class FLazyObjectPtr
local FLazyObjectPtr = {}


---@return boolean
function FLazyObjectPtr:IsValid() end


function FLazyObjectPtr:Reset() end


---@param P0 UObject 
function FLazyObjectPtr:Set(P0) end


---@return UObject
function FLazyObjectPtr:Get() end


return FLazyObjectPtr
