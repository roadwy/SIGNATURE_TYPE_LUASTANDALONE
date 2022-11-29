-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3bd7b36e1b0b 

-- params : ...
-- function num : 0
if (versioning.GetCloudBlockLevel)() >= 4 then
  return mp.INFECTED
end
return mp.LOWFI

