local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "d4f940ab-401b-4efc-aadc-ad5f3c50688a"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "MpDisableCaching"
  L0_0(L1_1)
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L0_0 = L0_0()
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L2_2 = L1_1(L2_2, "(.*)%.(%a+)->%w+/%w+.bin$")
  if L1_1 == nil or L2_2 == nil then
    L1_1 = L0_0
  else
    L1_1 = L1_1 .. "." .. L2_2
  end
  if sysio.IsFileExists(MpCommon.PathToWin32Path(L1_1)) then
    MpCommon.AppendPersistContext(L1_1, "enghipscpy:MHSTRCreateScheduledTaskFromMacro", 0)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
