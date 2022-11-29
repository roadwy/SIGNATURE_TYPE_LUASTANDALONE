-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6ad7ab0efa6d 

-- params : ...
-- function num : 0
if (versioning.IsSeville)() then
  return mp.INFECTED
end
return mp.LOWFI

