-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2c8967ce98a5 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 10, "êê")
;
(pe.mmap_patch_va)(pevars.sigaddr + 22, "êê")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED

