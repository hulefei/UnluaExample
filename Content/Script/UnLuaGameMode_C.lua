--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"

local UnLuaGameMode_C = Class()

--function UnLuaGameMode_C:Initialize(Initializer)
--end

--function UnLuaGameMode_C:UserConstructionScript()
--end

function UnLuaGameMode_C:ReceiveBeginPlay()
    print("UnLuaGameMode_C:ReceiveBeginPlay")
end

--function UnLuaGameMode_C:ReceiveEndPlay()
--end

-- function UnLuaGameMode_C:ReceiveTick(DeltaSeconds)
-- end

--function UnLuaGameMode_C:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
--end

--function UnLuaGameMode_C:ReceiveActorBeginOverlap(OtherActor)
--end

--function UnLuaGameMode_C:ReceiveActorEndOverlap(OtherActor)
--end

return UnLuaGameMode_C
