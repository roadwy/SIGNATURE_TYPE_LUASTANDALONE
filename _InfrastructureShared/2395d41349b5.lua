-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2395d41349b5 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr, "\144")
;
(pe.mmap_patch_va)(pevars.sigaddr + 6, "\144")
return mp.INFECTED

