local L0_0
L0_0 = pe
L0_0 = L0_0.isdynamic_va
L0_0 = L0_0(pe.get_regval(pe.REG_EIP))
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[pe.IMAGE_DIRECTORY_ENTRY_IMPORT]
L0_0 = L0_0.Size
if L0_0 > 60 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 < 2 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[2]
L0_0 = L0_0.VirtualAddress
if L0_0 > 12288 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.mmap_rva
L0_0 = L0_0(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_IMPORT].RVA + 16, 4)
if mp.readu_u32(L0_0, 1) == pesecs[2].VirtualAddress then
  return mp.LOWFI
end
return mp.CLEAN
