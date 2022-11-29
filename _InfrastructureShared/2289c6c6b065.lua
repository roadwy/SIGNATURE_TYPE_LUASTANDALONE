-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2289c6c6b065 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 10, "êê")
;
(pe.mmap_patch_va)(pevars.sigaddr + 14, "\235")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED

