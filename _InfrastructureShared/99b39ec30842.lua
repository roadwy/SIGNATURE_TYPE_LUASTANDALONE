local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.utf8p1
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    end
  end
end
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "\\windows\\sysvol\\domain\\policies\\{%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w}\\"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "[\000S\000o\000f\000t\000w\000a\000r\000e\000\\\000P\000o\000l\000i\000c\000i\000e\000s\000\\\000M\000i\000c\000r\000o\000s\000o\000f\000t\000\\\000W\000i\000n\000d\000o\000w\000s\000 \000D\000e\000f\000e\000n\000d\000e\000r\000\\\000R\000e\000a\000l\000-\000T\000i\000m\000e\000 \000P\000r\000o\000t\000e\000c\000t\000i\000o\000n\000\000\000;\000D\000i\000s\000a\000b\000l\000e\000R\000e\000a\000l\000t\000i\000m\000e\000M\000o\000n\000i\000t\000o\000r\000i\000n\000g\000\000\000;\000"
L2_2 = "[\000S\000o\000f\000t\000w\000a\000r\000e\000\\\000P\000o\000l\000i\000c\000i\000e\000s\000\\\000M\000i\000c\000r\000o\000s\000o\000f\000t\000\\\000W\000i\000n\000d\000o\000w\000s\000 \000D\000e\000f\000e\000n\000d\000e\000r\000\000\000;\000D\000i\000s\000a\000b\000l\000e\000A\000n\000t\000i\000S\000p\000y\000w\000a\000r\000e\000\000\000;\000"
L3_3 = sysio
L3_3 = L3_3.GetFileSize
L4_4 = L0_0
L3_3 = L3_3(L4_4)
if L3_3 > 50000 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = tostring
L5_5 = sysio
L5_5 = L5_5.ReadFile
L6_6 = L0_0
L6_6 = L5_5(L6_6, 0, L3_3)
L4_4 = L4_4(L5_5, L6_6, L5_5(L6_6, 0, L3_3))
L5_5 = string
L5_5 = L5_5.find
L6_6 = L4_4
L6_6 = L5_5(L6_6, L1_1, 1, true)
if L5_5 == nil or L6_6 == nil then
  L5_5, L6_6 = string.find(L4_4, L2_2, 1, true)
  if L5_5 == nil or L6_6 == nil then
    return mp.CLEAN
  end
end
if mp.readu_u16(L4_4, L6_6 + 5) == 59 and mp.readu_u16(L4_4, L6_6 + 5 + 6) == 59 and mp.readu_u32(L4_4, L6_6 + 5 + 6 + 2) == 1 then
  if sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
