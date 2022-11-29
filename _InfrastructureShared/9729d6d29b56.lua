-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9729d6d29b56 

-- params : ...
-- function num : 0
if (((mp.getfilename)()):lower()):match("\\poc.js$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

