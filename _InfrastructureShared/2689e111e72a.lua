-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2689e111e72a 

-- params : ...
-- function num : 0
if (pe.mmap_va)(pevars.sigaddr + 9, 1) == "\000" or (pe.mmap_va)(pevars.sigaddr + 9, 1) == "\001" or (pe.mmap_va)(pevars.sigaddr + 9, 1) == "\016" then
  (pe.mmap_patch_va)(pevars.sigaddr + 10, "")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 16, "")
  ;
  (mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN

