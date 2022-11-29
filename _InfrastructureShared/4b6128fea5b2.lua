-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4b6128fea5b2 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.isdll and peattributes.hasexports == false then
  return mp.INFECTED
end
return mp.CLEAN

