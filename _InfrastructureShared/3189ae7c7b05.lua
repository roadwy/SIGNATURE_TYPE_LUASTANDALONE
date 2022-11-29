-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3189ae7c7b05 

-- params : ...
-- function num : 0
local l_0_0 = (string.find)((pe.mmap_va)(pevars.sigaddr, 20), "u", 1, true) - 1
local l_0_1 = (string.find)((pe.mmap_va)(pevars.sigaddr, 96), "u", 80, true) - l_0_0 - 1
local l_0_2 = (string.format)("\235%s", (string.char)(l_0_1))
;
(pe.mmap_patch_va)(pevars.sigaddr + l_0_0, l_0_2)
return mp.INFECTED

