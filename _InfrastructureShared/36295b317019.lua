-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/36295b317019 

-- params : ...
-- function num : 0
if (string.match)((string.lower)((mp.getfilename)()), "%.php$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

