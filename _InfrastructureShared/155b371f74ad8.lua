local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[6]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[7]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[7]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[7]
      L2_2 = L2_2.utf8p2
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    end
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.command_line
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1.command_line
L2_2 = L2_2(L3_3)
L3_3 = MpCommon
L3_3 = L3_3.GetPersistContextCountNoPath
L3_3 = L3_3(L4_4)
if L3_3 > 0 then
  L3_3 = MpCommon
  L3_3 = L3_3.GetPersistContextNoPath
  L3_3 = L3_3(L4_4)
  if L3_3 then
    for L7_7, L8_8 in L4_4(L5_5) do
      L9_9 = string
      L9_9 = L9_9.match
      L9_9 = L9_9(L8_8, "\\([^\\]+)$")
      if L9_9 ~= nil and string.find(L2_2, L9_9, 1, true) and string.find(L0_0, L9_9, 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
