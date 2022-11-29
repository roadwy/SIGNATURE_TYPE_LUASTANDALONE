-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2289f86597e8 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 1, "\000\000\000\000")
;
(pe.set_regval)(pe.REG_ECX, 2147483647)
return mp.INFECTED

