-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15078c8c58dae 

-- params : ...
-- function num : 0
if (hstrlog[13]).matched or (hstrlog[14]).matched or (hstrlog[15]).matched or (hstrlog[16]).matched then
  return mp.INFECTED
end
return mp.CLEAN

