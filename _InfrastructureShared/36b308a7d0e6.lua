-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/36b308a7d0e6 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)((bm.get_imagepath)(), -10)) == "\\mshta.exe" then
  return mp.INFECTED
end
return mp.CLEAN

