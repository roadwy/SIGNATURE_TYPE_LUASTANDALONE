-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4ab3fca58cf0_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
if checkLogonFailureEvent(this_sigattrlog[2], true) then
  return mp.INFECTED
end
return mp.CLEAN

