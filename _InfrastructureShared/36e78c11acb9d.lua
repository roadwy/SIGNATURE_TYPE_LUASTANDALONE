-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/36e78c11acb9d 

-- params : ...
-- function num : 0
if peattributes.amd64_image then
  return mp.INFECTED
end
return mp.SUSPICIOUS
