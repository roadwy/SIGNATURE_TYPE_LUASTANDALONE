local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "//FOPEX:PyInstScrDrp"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.writeu_u8
L3_3 = L1_1
L4_4 = pe
L4_4 = L4_4.foffset_va
L4_4 = L4_4(pevars.sigaddr)
L4_4 = L4_4 + 5
L2_2(L3_3, L4_4, 115)
L2_2 = peattributes
L2_2 = L2_2.packed
if L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.get_parent_filehandle
  L2_2 = L2_2()
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L4_4 = pe
  L4_4 = L4_4.get_regval
  L4_4 = L4_4(pe.REG_EDI)
  L3_3 = L3_3(L4_4, 20)
  L4_4 = mp
  L4_4 = L4_4.readu_u32
  L4_4 = L4_4(L3_3, 17)
  if L4_4 ~= 206128461 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.readu_u32
  L4_4 = L4_4(L3_3, 5)
  if L4_4 < 4096 or L4_4 > 16777216 then
    return mp.CLEAN
  end
  L1_1 = L1_1 .. mp.readfile_by_handle(L2_2, L4_4, mp.get_filesize_by_handle(L2_2) - L4_4)
end
L2_2 = mp
L2_2 = L2_2.vfo_add_buffer
L3_3 = L1_1
L4_4 = "[PyInstScrDrp]"
L2_2(L3_3, L4_4, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "//FOPEX:PyInstScrDrp"
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
