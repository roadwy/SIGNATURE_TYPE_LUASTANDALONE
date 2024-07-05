local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L0_0 = L0_0()
  if L0_0 == nil or L0_0 == "" then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L3_3 = "(.*)%.(%a+)->%w+/%w+.bin$"
  L2_2 = L1_1(L2_2, L3_3)
  if L1_1 == nil or L2_2 == nil then
    L1_1 = L0_0
  else
    L3_3 = L1_1
    L4_4 = "."
    L1_1 = L3_3 .. L4_4 .. L2_2
  end
  L3_3 = versioning
  L3_3 = L3_3.GetOrgID
  L3_3 = L3_3()
  if L3_3 ~= "8645a59d-7655-442b-9c39-bffe1294f8cb" then
    L4_4 = MpCommon
    L4_4 = L4_4.IsSampled
    L4_4 = L4_4(30000, false, true, true)
  elseif L4_4 == true then
    L4_4 = mp
    L4_4 = L4_4.get_mpattribute
    L4_4 = L4_4("ASRWin32ApiMacroExclusion")
    if L4_4 == true then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  if L2_2 == "zip" then
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L4_4 = L4_4(mp.CONTEXT_DATA_PROCESSNAME)
    if L4_4 == nil or L4_4 == "" then
      return mp.CLEAN
    end
    L4_4 = string.lower(L4_4)
    if L4_4 == "explorer.exe" then
      return mp.CLEAN
    end
  end
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L4_4("MpDisableCaching")
  L4_4 = MpCommon
  L4_4 = L4_4.AppendPersistContext
  L4_4(L1_1, "enghipscpy:MHSTRLoadWin32importsfromMacroInside", 0)
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
