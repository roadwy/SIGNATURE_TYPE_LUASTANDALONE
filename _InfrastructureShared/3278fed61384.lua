local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.TimeDateStamp
  if L0_0 == 0 then
    L0_0 = pehdr
    L0_0 = L0_0.DataDirectory
    L0_0 = L0_0[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]
    L0_0 = L0_0.RVA
    if L0_0 ~= 0 then
      L0_0 = pehdr
      L0_0 = L0_0.DataDirectory
      L0_0 = L0_0[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]
      L0_0 = L0_0.Size
    end
  end
elseif L0_0 < 9 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = pe
L0_0 = L0_0.mmap_rva
L0_0 = L0_0(pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_EXPORT].RVA, 9)
if mp.readu_u32(L0_0, 5) == 4294967295 then
  return mp.INFECTED
end
return mp.CLEAN
