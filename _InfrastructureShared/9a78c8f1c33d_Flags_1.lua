-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9a78c8f1c33d_Flags_1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 9000 then
  return mp.INFECTED
end
return mp.CLEAN

