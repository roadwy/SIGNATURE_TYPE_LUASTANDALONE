-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1978d71020af 

-- params : ...
-- function num : 0
if pehdr.ImageBase + pehdr.SizeOfHeaders < (hstrlog[1]).VA then
  return mp.INFECTED
end
return mp.CLEAN

