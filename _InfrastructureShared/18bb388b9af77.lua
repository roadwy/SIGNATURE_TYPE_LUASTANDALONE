-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/18bb388b9af77 

-- params : ...
-- function num : 0
if (mp.IsKnownFriendlyFile)((bm.get_imagepath)(), true, true) == true then
  return mp.CLEAN
end
return mp.INFECTED

