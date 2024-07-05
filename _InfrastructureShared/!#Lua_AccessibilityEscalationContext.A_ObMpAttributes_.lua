local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILENAME
L4_4 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2))
L1_1 = string
L1_1 = L1_1.lower
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_FILEPATH
L4_4 = L3_3(L4_4)
L4_4 = L2_2(L3_3, L4_4, L3_3(L4_4))
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3, L4_4, L3_3(L4_4)))
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if not (L2_2 < 3) and L0_0 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L0_0
    L2_2 = L2_2(L3_3)
  end
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.gsub
L4_4 = "\\\\%?\\"
L2_2 = L2_2(L3_3, L4_4, "")
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.lower
L3_3 = MpCommon
L3_3 = L3_3.ExpandEnvironmentVariables
L4_4 = "%windir%"
L3_3 = L3_3(L4_4)
L4_4 = "\\system32"
L3_3 = L3_3 .. L4_4
L2_2 = L2_2(L3_3)
if L1_1 ~= L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3["sethc.exe"] = "sethc"
L3_3["utilman.exe"] = "utilman"
L3_3["osk.exe"] = "osk"
L3_3["magnify.exe"] = "magnify"
L3_3["narrator.exe"] = "narrator"
L3_3["displayswitch.exe"] = "displayswitch"
L3_3["atbroker.exe"] = "atbroker"
L4_4 = L3_3[L0_0]
if L4_4 ~= nil then
  L4_4 = L3_3[L0_0]
  mp.set_mpattribute("Lua:AccessibilityEscalationContext.A!" .. L4_4)
  return mp.INFECTED
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
