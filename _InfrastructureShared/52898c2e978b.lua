-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/52898c2e978b 

-- params : ...
-- function num : 0
local l_0_0 = (string.find)((pe.mmap_va)(pevars.sigaddr, 128), "Q‹Ï", 1, true)
;
(pe.mmap_patch_va)(pevars.sigaddr, "\235" .. (string.char)(l_0_0 - 3))
return mp.INFECTED

