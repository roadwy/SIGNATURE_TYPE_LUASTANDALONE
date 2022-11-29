-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3b78c01db269 

-- params : ...
-- function num : 0
if peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

