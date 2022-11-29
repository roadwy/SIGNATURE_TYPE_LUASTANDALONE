-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/297881b839e8_Flags_1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 4000000 and 0 + pehdr.ImageBase <= (hstrlog[1]).VA and (hstrlog[1]).VA <= 1024 + pehdr.ImageBase and 0 + pehdr.ImageBase <= (hstrlog[2]).VA and (hstrlog[2]).VA <= 1024 + pehdr.ImageBase then
  return mp.INFECTED
end
return mp.CLEAN

