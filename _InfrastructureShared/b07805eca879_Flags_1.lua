local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 > 10 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.Magic
if L0_0 ~= 267 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L1_1 = L1_1[1]
L1_1 = L1_1.Size
L2_2 = pe
L2_2 = L2_2.foffset_rva
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = L0_0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.ror32
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L2_2
L4_4 = L4_4(L5_5, 20)
L5_5 = 8
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.ror32
L5_5 = mp
L5_5 = L5_5.readu_u32
L5_5 = L5_5(L2_2, 40)
L4_4 = L4_4(L5_5, 8)
L5_5 = mp
L5_5 = L5_5.readfile
L5_5 = L5_5(0, mp.getfilesize())
if mp.ror32(mp.readu_u32(L5_5, mp.ror32(mp.readu_u32(L5_5, 60), 8) + 40), 8) == L4_4 then
  return mp.CLEAN
end
mp.writeu_u32(L5_5, mp.ror32(mp.readu_u32(L5_5, 60), 8) + 40 + 1, L4_4)
mp.vfo_add_buffer(L5_5, "Export_OEP", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
