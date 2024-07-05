local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 1024 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 1178817357 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 27
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 29
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == 1 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "Lua:TopLevelSingleFileCAB"
  L0_0(L1_1)
else
  L0_0 = mp
  L0_0 = L0_0.readu_u16
  L1_1 = headerpage
  L2_2 = 29
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 == 2 then
    L0_0 = mp
    L0_0 = L0_0.set_mpattribute
    L1_1 = "Lua:TopLevelDoubleFileCAB"
    L0_0(L1_1)
  else
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 5
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 9
L0_0 = L0_0(L1_1, L2_2)
if L0_0 < 65536 or L0_0 > 786432 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 17
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 44 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 31
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 33
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 1234 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 35
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 37
L1_1 = L1_1(L2_2, L3_3)
if L1_1 > 1008 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = L1_1 + 1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "Lua:PossibleTechsnabCAB"
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.ENGINEBUILD
if L2_2 > 12140 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1 + 8
L3_3 = nil
L4_4 = mp
L4_4 = L4_4.getfilesize
L4_4 = L4_4()
if L0_0 > L4_4 then
  L4_4 = mp
  L4_4 = L4_4.getfilesize
  L4_4 = L4_4()
  L3_3 = L4_4 - L2_2
else
  L3_3 = L0_0 - L2_2
end
L4_4 = mp
L4_4 = L4_4.readprotection
L4_4(false)
L4_4 = mp
L4_4 = L4_4.readfile
L4_4 = L4_4(L2_2, L3_3)
mp.vfo_add_buffer(L4_4, "[CABDATA]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
