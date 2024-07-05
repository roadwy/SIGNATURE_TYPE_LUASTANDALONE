local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:(SWC)"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "-[DotNetCompressed]->(SWC)"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L1_1 = L1_1 - 1
L2_2 = string
L2_2 = L2_2.find
L3_3 = L0_0
L4_4 = "->"
L2_2 = L2_2(L3_3, L4_4, 1, true)
L2_2 = L2_2 + 2
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = headerpage
L3_3 = L3_3(L4_4, 9)
if L3_3 ~= 23117 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L3_3 > 1048576 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readprotection
L4_4(false)
L4_4 = mp
L4_4 = L4_4.readfile
L4_4 = L4_4(8, L3_3 - 8)
mp.vfo_add_buffer(L4_4, L0_0:sub(L2_2, L1_1), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
mp.UfsSetMetadataBool("DotNetCoreBundleExtracts", true, true)
mp.readprotection(true)
return mp.INFECTED
