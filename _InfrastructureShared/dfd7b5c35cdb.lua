-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/dfd7b5c35cdb 

-- params : ...
-- function num : 0
if (versioning.IsSeville)() and (versioning.GetCloudBlockLevel)() >= 4 then
  return mp.INFECTED
end
return mp.LOWFI

