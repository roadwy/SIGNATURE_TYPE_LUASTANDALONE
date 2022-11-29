-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SerialisationIgnorePath_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("kali", 1, true) or l_0_0:find("nethunter", 1, true) or l_0_0:find("exploitdb", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

