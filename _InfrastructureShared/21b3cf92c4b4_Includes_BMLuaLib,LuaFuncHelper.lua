-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/21b3cf92c4b4_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = parseLogonEvent(this_sigattrlog[1])
    processPasswordChangeEvent(l_0_0)
  end
  return mp.CLEAN
end

