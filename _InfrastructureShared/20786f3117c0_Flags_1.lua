-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/20786f3117c0_Flags_1 

-- params : ...
-- function num : 0
if (not (hstrlog[1]).matched or (mp.getfilesize)() < 15000000) and 0 + 1 == 1 then
  return mp.INFECTED
end
return mp.CLEAN
