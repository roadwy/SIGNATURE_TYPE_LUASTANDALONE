-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2878eb1a6cbf 

-- params : ...
-- function num : 0
if peattributes.executes_from_dynamic_memory then
  return mp.INFECTED
end
return mp.CLEAN

