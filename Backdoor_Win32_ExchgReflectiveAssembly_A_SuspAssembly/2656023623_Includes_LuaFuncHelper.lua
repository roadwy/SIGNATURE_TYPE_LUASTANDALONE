local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L1_1 = "Lua:PeOriginalName!"
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = #L0_0
if L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L1_1(L2_2, L3_3)
if not L1_1 or not L2_2 then
  return L3_3
end
for L6_6, L7_7 in L3_3(L4_4) do
  if #L7_7 == 31 and (mp.get_mpattribute("LUA:PeFileVersion!15.0.0.0") or mp.get_mpattribute("LUA:PeFileVersion!0.0.0.0") or mp.get_mpattribute("LUA:PeFileVersion!10.0.0.0") or mp.get_mpattribute("LUA:PeFileVersion!4.8.4084.0")) then
    return mp.CLEAN
  elseif #L7_7 == 39 and string.find(L7_7, "!app_web_", -21, true) ~= nil then
    return mp.CLEAN
  elseif #L7_7 == 42 and string.find(L7_7, "!app_web_", -24, true) ~= nil then
    return mp.CLEAN
  else
    TT_SendBMSigTrigger(L2_2, "SuspModuleName", L7_7, 2)
  end
end
return L3_3
