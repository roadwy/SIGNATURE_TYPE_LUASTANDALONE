local L0_0
L0_0 = string
L0_0 = L0_0.find
L0_0 = L0_0(pe.mmap_va(pevars.sigaddr, 128), "I\129\249", 1, true)
if L0_0 == nil then
  L0_0 = string.find(pe.mmap_va(pevars.sigaddr, 128), "I\131\249", 1, true)
end
L0_0 = L0_0 - 1
pe.mmap_patch_va(pevars.sigaddr + L0_0 + 4, "\144\144")
return mp.INFECTED
