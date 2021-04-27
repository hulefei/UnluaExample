--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"

local WBP_UI1_C = Class()

--function WBP_UI1_C:Initialize(Initializer)
--end

--function WBP_UI1_C:PreConstruct(IsDesignTime)
--end

function WBP_UI1_C:Construct()
    UE4.UKismetSystemLibrary:PrintString("WBP_UI1_C:Construct")
    self.ButtonItem.OnClicked:Add(self,WBP_UI1_C.OnButtonItemClicked)
end

function WBP_UI1_C:OnButtonItemClicked()
    UE4.UKismetSystemLibrary:PrintString("OnButtonItemClicked")
    print("On Button Item Pressed")
end

--function WBP_UI1_C:Tick(MyGeometry, InDeltaTime)
--end

return WBP_UI1_C
