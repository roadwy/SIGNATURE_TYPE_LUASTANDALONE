-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2789b0be184f 

-- params : ...
-- function num : 0
if (pe.get_api_id)((pe.get_regval)(pe.REG_EAX)) ~= 4111270722 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 7, "\001\000\000\000")
return mp.INFECTED

