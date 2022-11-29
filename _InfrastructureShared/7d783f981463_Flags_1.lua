-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7d783f981463_Flags_1 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched or (hstrlog[2]).matched or (hstrlog[3]).matched and ((hstrlog[4]).matched or (hstrlog[5]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

