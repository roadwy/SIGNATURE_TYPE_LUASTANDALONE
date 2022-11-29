-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/20293943f4b2 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)(mp.FILEPATH_QUERY_FULL)):lower()
if not l_0_0:find("assets/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

