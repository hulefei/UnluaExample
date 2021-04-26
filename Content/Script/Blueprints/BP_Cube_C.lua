--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"

local BP_Cube_C = Class()

--function BP_Cube_C:Initialize(Initializer)
--end

--function BP_Cube_C:UserConstructionScript()
--end

function BP_Cube_C:ReceiveBeginPlay()
    UE4.UKismetSystemLibrary:PrintString("BP_Cube_C")
end

--function BP_Cube_C:ReceiveEndPlay()
--end

-- function BP_Cube_C:ReceiveTick(DeltaSeconds)
-- end

--function BP_Cube_C:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
--end

--function BP_Cube_C:ReceiveActorBeginOverlap(OtherActor)
--end

--function BP_Cube_C:ReceiveActorEndOverlap(OtherActor)
--end

return BP_Cube_C
