local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.ismsil
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[3]
L0_0 = L0_0.VA
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.VA
if L0_0 > L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(L0_0, L1_1 - L0_0 + 10)
mp.vfo_add_buffer(L2_2, "[ShellDump]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
