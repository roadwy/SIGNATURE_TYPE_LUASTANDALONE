local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = 0
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(false)
L2_2 = hstrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = pe
  L2_2 = L2_2.mmap_va
  L2_2 = L2_2(hstrlog[1].VA, 80)
  L0_0 = L2_2
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, "\185....\190.....-\243\165")
  L1_1 = L2_2
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L2_2 = L2_2(L0_0, L1_1 + 6)
  L1_1 = L2_2
else
  L2_2 = hstrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.VA
    L2_2 = pe
    L2_2 = L2_2.foffset_va
    L2_2 = L2_2(L1_1)
    L0_0 = mp.readfile(L2_2, 80)
    L1_1 = string.find(L0_0, "\137E.h....h....\139E")
    if L1_1 == nil then
      return mp.CLEAN
    end
    L1_1 = mp.readu_u32(L0_0, L1_1 + 9)
  end
end
L2_2 = pehdr
L2_2 = L2_2.AddressOfEntryPoint
L2_2 = L2_2 + pehdr.ImageBase
if L1_1 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(0, mp.getfilesize())
mp.writeu_u32(L2_2, mp.readu_u32(L2_2, 61) + 40 + 1, L1_1 - pehdr.ImageBase)
mp.vfo_add_buffer(L2_2, "[VmAllocCall]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
