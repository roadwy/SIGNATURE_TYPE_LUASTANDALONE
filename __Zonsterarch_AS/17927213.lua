-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__Zonsterarch_AS/17927213 

-- params : ...
-- function num : 0
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData, 76)
local l_0_1 = (mp.crc32)(-1, l_0_0, 1, 11)
if l_0_1 ~= 1339394596 then
  return mp.CLEAN
end
;
(mp.writeu_u8)(l_0_0, 25, l_0_0:byte(26))
;
(mp.writeu_u8)(l_0_0, 27, l_0_0:byte(26))
;
(mp.writeu_u8)(l_0_0, 28, l_0_0:byte(26))
if (mp.bitxor)((mp.readu_u32)(l_0_0, 25), (mp.readu_u32)(l_0_0, 45)) ~= 1918975008 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(l_0_0, 25), (mp.readu_u32)(l_0_0, 49)) ~= 1986619491 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(l_0_0, 25), (mp.readu_u32)(l_0_0, 53)) ~= 1701076837 then
  return mp.CLEAN
end
return mp.INFECTED

