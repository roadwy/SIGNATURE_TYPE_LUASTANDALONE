-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3e787a951c30 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.no_security and peattributes.isvbnative then
  return mp.INFECTED
end
return mp.CLEAN

