local L0_0
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(pe.mmap_va(pevars.sigaddr + 19, 4), 1)
if pe.vm_search(L0_0, L0_0 + 60, "C\000:\000\\\000S\000y\000s\000t\000e\000m\000 \000V\000o\000l\000u\000m\000e\000 \000I\000n\000f\000o\000r\000m\000a\000t\000i\000o\000n\000\\\000\000\000\144\000", nil, pe.VM_SEARCH_BM) == L0_0 then
  pe.mmap_patch_va(pevars.sigaddr + 32, "\184\003\000\000\000\144")
end
return mp.INFECTED
