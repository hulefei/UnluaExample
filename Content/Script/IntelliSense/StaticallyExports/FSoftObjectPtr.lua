---@class FSoftObjectPtr
local FSoftObjectPtr = {}


---@return boolean
function FSoftObjectPtr:IsValid() end


---@return boolean
function FSoftObjectPtr:IsNull() end


---@return boolean
function FSoftObjectPtr:IsPending() end


function FSoftObjectPtr:Reset() end


---@param P0 UObject 
function FSoftObjectPtr:Set(P0) end


---@return UObject
function FSoftObjectPtr:Get() end


---@return UObject
function FSoftObjectPtr:LoadSynchronous() end


return FSoftObjectPtr
