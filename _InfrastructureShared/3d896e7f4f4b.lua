-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3d896e7f4f4b 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 2, "\000\000\000\000")
;
(pe.mmap_patch_va)(pevars.sigaddr + 10, "\000\000\000\000")
;
(pe.mmap_patch_va)(pevars.sigaddr + 16, "\000\000\000")
return mp.INFECTED

