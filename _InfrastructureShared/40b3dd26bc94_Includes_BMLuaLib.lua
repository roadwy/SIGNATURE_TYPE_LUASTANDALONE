local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = isnull
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -10
L1_1 = L1_1(L2_2, L3_3)
L2_2 = isnull
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == "\\mshta.exe" then
  L3_3 = bm
  L3_3 = L3_3.get_current_process_startup_info
  L3_3 = L3_3()
  L4_4 = isnull
  L4_4 = L4_4(L3_3)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = L3_3.command_line
  if string.find(L4_4, "-embedding", 1, true) then
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
