-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5a8994e6c9b3 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr, "\235-")
;
(pe.mmap_patch_va)(pevars.sigaddr + 47, "ù")
;
(pe.mmap_patch_va)(pevars.sigaddr + 55, "\235")
return mp.INFECTED

