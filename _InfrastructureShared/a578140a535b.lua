-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a578140a535b 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(15437, 4)
if (mp.readu_u32)(l_0_0, 1) == 4018468997 and l_0_0 ~= "ÆĞÔÇÖİ›ÛÔØĞÄÀĞÇÌ›ÖÚØ" then
  return mp.INFECTED
end
return mp.CLEAN

