-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6829fe7ec81a 

-- params : ...
-- function num : 0
local l_0_0 = ((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL))):lower()
if l_0_0:find(".lnk", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

