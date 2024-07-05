local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pe
L2_2 = L2_2.get_regval
L3_3 = pe
L3_3 = L3_3.REG_ESP
L2_2 = L2_2(L3_3)
L3_3 = 16
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L1_1
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
if not (L2_2 <= 0) and not (L2_2 > 4194304) then
  L3_3 = pe
  L3_3 = L3_3.isdynamic_va
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
elseif not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L1_1
L3_3 = L3_3(L4_4, 5)
if L3_3 <= 0 or L0_0 <= L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = pe
L4_4 = L4_4.mmap_va
L4_4 = L4_4(L2_2, L3_3)
mp.vfo_add_buffer(L4_4, "[EvrStkExeScpt]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
