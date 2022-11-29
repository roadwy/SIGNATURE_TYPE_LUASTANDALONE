-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3c89a9049aea 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 28, "")
;
(mp.set_mpattribute)("do_deep_rescan")
return mp.INFECTED

