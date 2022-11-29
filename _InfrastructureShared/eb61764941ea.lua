-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/eb61764941ea 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.no_security and (mp.getfilesize)() >= 458752 and (mp.getfilesize)() <= 483328 then
  return mp.INFECTED
end
return mp.LOWFI

