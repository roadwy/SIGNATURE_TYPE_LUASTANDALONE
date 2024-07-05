local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
L2_2 = nil
if L1_1 then
  L3_3 = string
  L3_3 = L3_3.match
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, "wscript.*%s+%\"?%'?(%w:\\.*%.js)")
  L2_2 = L3_3
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
L4_4 = GetRollingQueue
L4_4 = L4_4("LuaHighRiskJSinZipWebVector")
if L4_4 ~= nil and type(L4_4) == "table" then
  for _FORV_8_ in pairs(L4_4) do
    if string.find(L2_2, L4_4[_FORV_8_].key) then
      L3_3 = true
    end
  end
end
if L3_3 and mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "explorer.exe" then
  return mp.INFECTED
end
return mp.CLEAN
