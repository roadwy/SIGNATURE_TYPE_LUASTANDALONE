local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.VA
L2_2 = L1_1 - L0_0
if L2_2 > 256 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = L1_1 + 21
L3_3 = L3_3(L4_4, 6)
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.bsplit
L4_4 = L2_2
L3_3 = L3_3(L4_4, 8)
if L3_3 == 144 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = pe
L3_3 = L3_3.foffset_va
L4_4 = L1_1
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.readprotection
L4_4(false)
L4_4 = mp
L4_4 = L4_4.readfile
L4_4 = L4_4(0, mp.getfilesize())
if mp.bsplit(L2_2, 8) == 117 then
  mp.writeu_u16(L4_4, L3_3 + 22, 37008)
elseif L2_2 == 34063 then
  mp.writeu_u32(L4_4, L3_3 + 22, 2425393296)
  mp.writeu_u16(L4_4, L3_3 + 26, 37008)
end
mp.vfo_add_buffer(L4_4, "[Obfuscator]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
