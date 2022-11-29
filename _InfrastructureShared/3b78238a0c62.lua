-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3b78238a0c62 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 172032 then
  return mp.INFECTED
end
return mp.CLEAN

