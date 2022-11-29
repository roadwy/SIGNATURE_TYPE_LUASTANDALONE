-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/149789d985d1f 

-- params : ...
-- function num : 0
if ((not (hstrlog[1]).matched and not (hstrlog[2]).matched) or (not (hstrlog[3]).matched and not (hstrlog[4]).matched and not (hstrlog[5]).matched and not (hstrlog[6]).matched) or ((hstrlog[9]).matched or (hstrlog[10]).matched or (hstrlog[11]).matched or (hstrlog[7]).matched or (hstrlog[8]).matched)) then
  return mp.INFECTED
end
return mp.CLEAN

