local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:(SWC)"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1 = mp
L1_1 = L1_1.get_mpattributesubstring
L2_2 = "->[pwszlib]->(swc)"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "%->%[pwszlib%].*%->%(swc%)")
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.set_mpattribute
L2_2 = "Lua:VpathPwsZlibSwc"
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L1_1 = L1_1(L2_2, 9)
if L1_1 ~= 23117 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 > 1000000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(false)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(8, L1_1 - 8)
mp.vfo_add_buffer(L2_2, "[PwsZlibSwcMZ]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
