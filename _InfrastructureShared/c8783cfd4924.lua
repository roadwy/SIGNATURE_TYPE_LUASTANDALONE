-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c8783cfd4924 

-- params : ...
-- function num : 0
if peattributes.isdll == true and (mp.getfilesize)() < 62000 then
  return mp.INFECTED
end
return mp.CLEAN

