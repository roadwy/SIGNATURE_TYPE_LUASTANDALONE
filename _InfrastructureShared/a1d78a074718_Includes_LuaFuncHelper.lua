local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = " scrobj.dll"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.LOWFI
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "^(.*%S)%s*$"
L2_2 = L2_2(L3_3, L4_4)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "i:http.*%s+(.*)$"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = string
  L3_3 = L3_3.match
  L4_4 = L1_1
  L5_5 = "i:ftp.*%s+(.*)$"
  L3_3 = L3_3(L4_4, L5_5)
  L2_2 = L3_3
end
L3_3 = IsKeyInRollingQueue
L4_4 = "scrobj.dll"
L5_5 = L2_2
L4_4 = L3_3(L4_4, L5_5, true)
if L3_3 then
  L5_5 = mp
  L5_5 = L5_5.LOWFI
  return L5_5
end
L5_5 = GetRollingQueue
L5_5 = L5_5("scrobj.dll")
if L5_5 ~= nil and type(L5_5) == "table" then
  for _FORV_9_ in pairs(L5_5) do
    if string.find(L1_1, L5_5[_FORV_9_].key) then
      return mp.LOWFI
    end
  end
end
return mp.CLEAN
