-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c54058a18a1f 

-- params : ...
-- function num : 0
if peattributes.isdll and not peattributes.hasexports then
  return mp.INFECTED
end
return mp.CLEAN

