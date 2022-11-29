-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8540a7ba5afc 

-- params : ...
-- function num : 0
if ((mp.getfilename)()):match("(Ole Stream 0).*%.scr") and peattributes.isexe then
  return mp.INFECTED
end
return mp.CLEAN

