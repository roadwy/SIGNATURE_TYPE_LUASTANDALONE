local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 then
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
    L3_3 = mp
    L3_3 = L3_3.readprotection
    L4_4 = false
    L3_3(L4_4)
    L3_3 = mp
    L3_3 = L3_3.readfile
    L4_4 = L2_2
    L5_5 = L1_1
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = mp
    L4_4 = L4_4.ror32
    L5_5 = mp
    L5_5 = L5_5.readu_u32
    L6_6 = L3_3
    L5_5 = L5_5(L6_6, 20)
    L6_6 = 8
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= 1 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = mp
    L5_5 = L5_5.ror32
    L6_6 = mp
    L6_6 = L6_6.readu_u32
    L6_6 = L6_6(L3_3, 40)
    L5_5 = L5_5(L6_6, 8)
    L6_6 = mp
    L6_6 = L6_6.readfile
    L6_6 = L6_6(0, mp.getfilesize())
    if mp.ror32(mp.readu_u32(L6_6, mp.ror32(mp.readu_u32(L6_6, 60), 8) + 40), 8) == L5_5 then
      return mp.CLEAN
    end
    mp.writeu_u32(L6_6, mp.ror32(mp.readu_u32(L6_6, 60), 8) + 40 + 1, L5_5)
    mp.vfo_add_buffer(L6_6, "[ExportEP]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
