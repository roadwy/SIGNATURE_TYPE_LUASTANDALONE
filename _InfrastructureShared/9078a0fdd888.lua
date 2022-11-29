-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9078a0fdd888 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.no_security then
  return mp.INFECTED
end
return mp.CLEAN

