-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1187857de8a8b 

-- params : ...
-- function num : 0
if (hstrlog[10]).matched or (hstrlog[9]).matched then
  return mp.INFECTED
end
return mp.CLEAN

