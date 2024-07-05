local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
function L0_0(A0_10, A1_11)
  local L2_12, L3_13
  L2_12 = {}
  L2_12[1952539182] = ""
  L2_12[1684890414] = ""
  L2_12[1836016430] = ""
  L2_12[1819304750] = ""
  L2_12[1702389038] = ""
  L2_12[1718186030] = ""
  L2_12[1919120174] = ""
  L2_12[1935832622] = ""
  L2_12[1802398766] = ""
  L2_12[1718843182] = ""
  L2_12[1700951598] = ""
  L2_12[1702062638] = ""
  L2_12[1635018798] = ""
  L2_12[1936338432] = ""
  L2_12[1819042862] = ""
  L2_12[2019782446] = ""
  L2_12[1918986798] = ""
  L2_12[1668511534] = ""
  L2_12[1752397614] = ""
  L3_13 = mp
  L3_13 = L3_13.bitor
  L3_13 = L3_13(mp.readu_u32(A0_10, A1_11), 538976288)
  if L2_12[L3_13] or L2_12[mp.bitand(L3_13, 4294967040)] then
    return true
  end
  return false
end
function L1_1(A0_14)
  local L1_15, L2_16, L3_17
  L1_15 = mp
  L1_15 = L1_15.readu_u32
  L2_16 = footerpage
  L3_17 = A0_14 + 1
  L1_15 = L1_15(L2_16, L3_17)
  if L1_15 == 33639248 then
    L1_15 = A0_14 + 48
    L2_16 = mp
    L2_16 = L2_16.FOOTERPAGE_SZ
    if L1_15 < L2_16 then
      L1_15 = 47
      L2_16 = mp
      L2_16 = L2_16.readu_u16
      L3_17 = footerpage
      L2_16 = L2_16(L3_17, A0_14 + 29)
      L3_17 = mp
      L3_17 = L3_17.bitand
      L3_17 = L3_17(mp.readu_u16(footerpage, A0_14 + 9), 1)
      if L3_17 == 1 and L2_16 > 4 then
        L3_17 = A0_14 + L1_15
        L3_17 = L3_17 + L2_16
        if L3_17 < mp.FOOTERPAGE_SZ then
          L3_17 = _UPVALUE0_
          L3_17 = L3_17(footerpage, A0_14 + L1_15 + L2_16 - 4)
          if L3_17 then
            L3_17 = true
            return L3_17, 0
          end
        end
      end
      L3_17 = A0_14 + L1_15
      L3_17 = L3_17 + L2_16
      L3_17 = L3_17 + mp.readu_u16(footerpage, A0_14 + 31)
      L3_17 = L3_17 - 1
      return false, L3_17
    end
  end
end
L2_2 = mp
L2_2 = L2_2.IsHipsRuleEnabled
L3_3 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_SCANREASON
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.SCANREASON_ONMODIFIEDHANDLECLOSE
if L2_2 ~= L3_3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_NEWLYCREATEDHINT
L2_2 = L2_2(L3_3)
if L2_2 ~= true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.HEADERPAGE_SZ
if L2_2 < 1024 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 67324752 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = headerpage
L5_5 = 7
L3_3 = L3_3(L4_4, L5_5)
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 31
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = headerpage
L5_5 = 27
L3_3 = L3_3(L4_4, L5_5)
if L3_3 > 4 then
  L4_4 = L2_2 + L3_3
  L5_5 = mp
  L5_5 = L5_5.HEADERPAGE_SZ
  if L4_4 < L5_5 then
    L4_4 = L0_0
    L5_5 = headerpage
    L6_6 = L2_2 + L3_3
    L6_6 = L6_6 - 4
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.set_mpattribute
      L5_5 = "Lua:ZipHasEncryptedFileWithExeExtension"
      L4_4(L5_5)
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
end
L4_4 = mp
L4_4 = L4_4.getfilesize
L4_4 = L4_4()
L5_5 = mp
L5_5 = L5_5.FOOTERPAGE_SZ
L5_5 = L5_5 - 21
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = footerpage
L8_8 = L5_5
L6_6 = L6_6(L7_7, L8_8)
if L6_6 ~= 101010256 then
  L6_6 = tostring
  L7_7 = footerpage
  L6_6 = L6_6(L7_7)
  L8_8 = L6_6
  L7_7 = L6_6.find
  L9_9 = "PK\005\006"
  L7_7 = L7_7(L8_8, L9_9, 1, true)
  if L7_7 == nil then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
end
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = footerpage
L8_8 = L5_5 + 16
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 0
L8_8 = mp
L8_8 = L8_8.FOOTERPAGE_SZ
if L4_4 < L8_8 then
  L7_7 = L6_6
else
  L8_8 = L6_6 - L4_4
  L9_9 = mp
  L9_9 = L9_9.FOOTERPAGE_SZ
  L7_7 = L8_8 + L9_9
end
L8_8 = 0
L9_9 = nil
while L8_8 < 3 and L7_7 + 4 < mp.FOOTERPAGE_SZ do
  L9_9, L7_7 = L1_1(L7_7)
  if L9_9 then
    mp.set_mpattribute("Lua:ZipHasEncryptedFileWithExeExtension")
    return mp.CLEAN
  end
  L8_8 = L8_8 + 1
end
return mp.CLEAN
