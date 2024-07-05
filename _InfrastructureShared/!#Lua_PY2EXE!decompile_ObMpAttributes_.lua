local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SIGATTR:PY2EXE!compiled"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "HSTR:PY2EXE!compiled"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_RESOURCE
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
if L0_0 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = pe
L2_2 = L2_2.mmap_rva
L3_3 = L0_0 + 12
L4_4 = 2
L2_2 = L2_2(L3_3, L4_4)
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = pe
L3_3 = L3_3.mmap_rva
L4_4 = L0_0 + 14
L5_5 = 2
L3_3 = L3_3(L4_4, L5_5)
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = pe
L4_4 = L4_4.mmap_rva
L5_5 = L0_0 + 16
L6_6 = 2
L4_4 = L4_4(L5_5, L6_6)
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u16
L5_5 = pe
L5_5 = L5_5.mmap_rva
L6_6 = L0_0 + 24
L7_7 = 2
L5_5 = L5_5(L6_6, L7_7)
L6_6 = 1
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = pe
L6_6 = L6_6.mmap_rva
L7_7 = L0_0 + L4_4
L8_8 = 4
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= 5242892 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = pe
L6_6 = L6_6.mmap_rva
L7_7 = L0_0 + L4_4
L7_7 = L7_7 + 4
L8_8 = 4
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= 5505113 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = pe
L6_6 = L6_6.mmap_rva
L7_7 = L0_0 + L4_4
L7_7 = L7_7 + 8
L8_8 = 4
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= 5177416 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = pe
L6_6 = L6_6.mmap_rva
L7_7 = L0_0 + L4_4
L7_7 = L7_7 + 12
L8_8 = 4
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= 5439566 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L1_1 - 1
L5_5 = L5_5 * 16
L6_6 = L2_2 * 16
L5_5 = L5_5 + L6_6
L5_5 = L3_3 - L5_5
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = pe
L7_7 = L7_7.mmap_rva
L8_8 = L0_0 + L5_5
L8_8 = L8_8 + 4
L9_9 = 4
L7_7 = L7_7(L8_8, L9_9)
L8_8 = 1
L6_6 = L6_6(L7_7, L8_8)
L7_7 = mp
L7_7 = L7_7.readu_u32
L8_8 = pe
L8_8 = L8_8.mmap_rva
L9_9 = L0_0 + L5_5
L8_8 = L8_8(L9_9, 4)
L9_9 = 1
L7_7 = L7_7(L8_8, L9_9)
L8_8 = mp
L8_8 = L8_8.readu_u32
L9_9 = pe
L9_9 = L9_9.mmap_rva
L9_9 = L9_9(L7_7, 4)
L8_8 = L8_8(L9_9, 1)
if L8_8 ~= 2018915346 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = pe
L9_9 = L9_9.mmap_rva
L9_9 = L9_9(L7_7, L6_6)
mp.vfo_add_buffer(L9_9, "[py2exebin]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
