--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"

local BP_Actor1_C = Class()

--function BP_Actor1_C:Initialize(Initializer)
--end

--function BP_Actor1_C:UserConstructionScript()
--end

function BP_Actor1_C:PrintOnScreen(message)
    UE4.UKismetSystemLibrary:PrintString(message)
end


function BP_Actor1_C:PrintTest()
    UE4.UKismetSystemLibrary.PrintString(self,"Lua PrintTest")
end

function BP_Actor1_C:OverriddenPrintTest()
    -- self.Overridden.PrintTest(self)
    self.Overridden:PrintTest()
end

function BP_Actor1_C:DelayFunc(Induration)
    coroutine.resume(coroutine.create(
        function(WorldContectObject,duration)
            UE4.UKismetSystemLibrary.Delay(WorldContectObject,duration)
            UE4.UKismetSystemLibrary.PrintString(WorldContectObject,"Helloworld")
        end
    ),
    self,Induration)
end

function BP_Actor1_C:ReceiveBeginPlay()
    -- 方法调用 ------------------------------------------------------------------------
    -- self:PrintTest()

    -- 覆盖多值返回---------------------------------------------------------------------
    -- local result, name = self:GetBPName()
    -- if result then
    --     self:PrintOnScreen("true")
    -- else
    --     self:PrintOnScreen("false")
    -- end
    -- self:PrintOnScreen(name)


    -- 覆盖c++ ------------------------------------------------------------------------
    -- local level,heath,bname = self:GetPlayerBaseInfo(100,100,'icewolf_')

    -- local level = 100
    -- local heath = 200
    -- local bname = 'icewolf_'
    -- level,heath,bname = self:GetPlayerBaseInfo(level,heath,bname)

    -- self:PrintOnScreen(level)
    -- self:PrintOnScreen(heath)
    -- self:PrintOnScreen(bname)
    -- 4. 调用被覆写的方法 --------------------------------------------------------------
    -- self:OverriddenPrintTest()

    -- local World = self:GetWorld()
    -- local CubeClass = UE4.UClass.Load("/Game/Blueprints/BP_Cube.BP_Cube")
    -- local NewCube = World:SpawnActor(CubeClass, self:GetTransform(), UE4.ESpawnActorCollisionHandlingMethod.AlwaysSpawn, self, self, "Blueprints.BP_Cube_C")

    -- load UClass
    local WBP_UI1 = UE4.UClass.Load("/Game/Blueprints/WBP_UI1.WBP_UI1_C")
    local Widget = UE4.UWidgetBlueprintLibrary.Create(self, WBP_UI1)
    Widget:AddToViewport()

    -- 代码中创建object -----------------------------------------------------------------
    -- local Object1 = UE4.UObject1.GetInstance()
    -- Object1:HelloInterface()
    -- Object1:Hello1()
    -- Object1:Hello2("Hello2Text")
    -- local ret1 = Object1:Hello3("Hello3Text")
    -- print(ret1)
    -- Object1:CallNoParamDelegate()
    -- Object1:CallOneParamDelegate("CallOneParamDelegateText")
    -- local ret2 = Object1:CallOneParamAndRetValDelegate("CallOneParamAndRetValDelegateText")
    -- print(ret2)

    -- -- dynamic delegate ---------------------------------------------------------------------------------------------
    -- local callback1 = function() print("CallBack1") end
    -- local callback2 = function() print("CallBack2") end
    -- Object1.TestNoParamDynamicDelegate:Bind(self, callback2)
    -- Object1.TestNoParamDynamicDelegate:Execute()
    -- Object1.TestNoParamDynamicDelegate:Unbind()

    -- Object1.TestNoParamMDynamicMulticastDelegate:Add(self, callback1)
    -- Object1.TestNoParamMDynamicMulticastDelegate:Add(self, callback2)
    -- Object1.TestNoParamMDynamicMulticastDelegate:Broadcast()

    -- local OutName = UE4.UObject1.GetFString("icewolf")
    -- print(OutName)

    -- Struct ----------------------------------------------------------------------------------------------------------
    -- local Struct_1 = UE4.FStruct_1()
    -- Struct_1.id = 2
    -- Struct_1.name = 'icewolf2'
    -- Struct_1.age = 200
    -- print(Struct_1.id .. ":" .. Struct_1.name .. ":" .. Struct_1.age)

    -- TArray ---------------------------------------------------------------------------------------------------------
    -- local Indices = UE4.TArray(0)
	-- Indices:Add(100)
	-- Indices:Add(30)
    -- print(Indices:Length())
    -- print(Indices:Get(1))

    -- 非原始类型 ----------------------------------------------------------------------------------------------------------
    -- local ValueName =  UE4.FNameStruct()
    -- UE4.UObject1.GetStruct(ValueName)
    -- print(ValueName.Name)

    -- Delay -----------------------------------------------------------------------------------------------------------
    -- self:DelayFunc(2.0)
    -- UE4.UKismetSystemLibrary.PrintString(self,"111111")



end




return BP_Actor1_C
