local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 then
    L0_0 = pe
    L0_0 = L0_0.mmap_va
    L1_1 = pehdr
    L1_1 = L1_1.ImageBase
    L2_2 = pehdr
    L2_2 = L2_2.DataDirectory
    L2_2 = L2_2[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]
    L2_2 = L2_2.RVA
    L1_1 = L1_1 + L2_2
    L2_2 = 40
    L0_0 = L0_0(L1_1, L2_2)
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, 13)
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L2_2 = L2_2(pehdr.ImageBase + L1_1, 32)
    if string.sub(L2_2, 1, 17) == "dll_down_exec.dll" then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
