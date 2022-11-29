-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12d8dd5812987 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("BM_MACHO64_FILE") then
  return mp.CLEAN
end
return mp.INFECTED

