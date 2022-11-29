-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#MpIsExhaustiveScriptScan_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 3000000 then
  return mp.CLEAN
end
return mp.INFECTED

