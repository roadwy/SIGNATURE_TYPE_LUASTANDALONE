-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/beb35bab860a_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if isTainted(l_0_0, "remote_file_created_taint") then
  return mp.INFECTED
end
return mp.CLEAN

