local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11
  L1_3 = headerpage
  L2_4 = A0_2 + 2
  L1_3 = L1_3[L2_4]
  if L1_3 == 122 then
    L2_4 = A0_2 + 48
    L3_5 = mp
    L3_5 = L3_5.HEADERPAGE_SZ
    if L2_4 < L3_5 then
      L2_4 = headerpage
      L3_5 = A0_2 + 26
      L2_4 = L2_4[L3_5]
      if L2_4 == 3 then
        L2_4 = mp
        L2_4 = L2_4.readu_u16
        L3_5 = headerpage
        L4_6 = A0_2 + 32
        L2_4 = L2_4(L3_5, L4_6)
        if L2_4 == 19779 then
          L2_4 = headerpage
          L3_5 = A0_2 + 34
          L2_4 = L2_4[L3_5]
          if L2_4 == 84 then
            L2_4 = mp
            L2_4 = L2_4.set_mpattribute
            L3_5 = "Lua:RarHasCommentBlock"
            L2_4(L3_5)
          end
        end
      end
    end
  elseif L1_3 == 116 then
    L2_4 = A0_2 + 128
    L3_5 = mp
    L3_5 = L3_5.HEADERPAGE_SZ
    if L2_4 < L3_5 then
      L2_4 = headerpage
      L3_5 = A0_2 + 25
      L2_4 = L2_4[L3_5]
      if L2_4 == 48 then
        L2_4 = mp
        L2_4 = L2_4.set_mpattribute
        L3_5 = "Lua:RarHasStoredFile"
        L2_4(L3_5)
      end
      L2_4 = mp
      L2_4 = L2_4.readu_u16
      L3_5 = headerpage
      L4_6 = A0_2 + 3
      L2_4 = L2_4(L3_5, L4_6)
      L3_5 = mp
      L3_5 = L3_5.bitand
      L4_6 = L2_4
      L5_7 = 4
      L3_5 = L3_5(L4_6, L5_7)
      if L3_5 == 4 then
        L3_5 = mp
        L3_5 = L3_5.set_mpattribute
        L4_6 = "Lua:RarHasEncryptedFile"
        L3_5(L4_6)
      end
      L3_5 = mp
      L3_5 = L3_5.readu_u32
      L4_6 = headerpage
      L5_7 = A0_2 + 7
      L3_5 = L3_5(L4_6, L5_7)
      L4_6 = mp
      L4_6 = L4_6.readu_u32
      L5_7 = headerpage
      L6_8 = A0_2 + 11
      L4_6 = L4_6(L5_7, L6_8)
      L5_7 = 80
      if L3_5 ~= 0 and L4_6 > 104857600 then
        L6_8 = L4_6 / L3_5
        if L5_7 < L6_8 then
          L6_8 = mp
          L6_8 = L6_8.set_mpattribute
          L7_9 = "Lua:RarHasHighlyCompressedFile"
          L6_8(L7_9)
          L6_8 = L4_6 / L3_5
          if L6_8 >= 100 then
            L7_9 = mp
            L7_9 = L7_9.set_mpattribute
            L7_9(L8_10)
          end
          if L6_8 >= 250 then
            L7_9 = mp
            L7_9 = L7_9.set_mpattribute
            L7_9(L8_10)
          end
          if L6_8 >= 500 then
            L7_9 = mp
            L7_9 = L7_9.set_mpattribute
            L7_9(L8_10)
          end
          if L6_8 >= 1000 then
            L7_9 = mp
            L7_9 = L7_9.set_mpattribute
            L7_9(L8_10)
          end
        end
      end
      L6_8 = mp
      L6_8 = L6_8.readu_u16
      L7_9 = headerpage
      L6_8 = L6_8(L7_9, L8_10)
      if L6_8 > 4 and L6_8 < 96 then
        L7_9 = 32
        if L8_10 == 256 then
          L7_9 = L7_9 + 8
        end
        for _FORV_11_ = 0, L6_8 do
          if mp.bitor(mp.readu_u32(headerpage, A0_2 + L7_9 + _FORV_11_), 538976288) == 1936941424 and mp.bitor(mp.readu_u32(headerpage, A0_2 + L7_9 + _FORV_11_ + 4), 538976288) == 1685221239 then
            mp.set_mpattribute("Lua:RarHasFileNameWithPassword")
            break
          end
        end
        L8_10[1952539182] = ""
        L8_10[1684890414] = ""
        L8_10[1836016430] = ""
        L8_10[1819304750] = ""
        L8_10[1702389038] = ""
        L8_10[1718186030] = ""
        L8_10[1919120174] = ""
        L8_10[1935832622] = ""
        L8_10[1802398766] = ""
        L8_10[1718843182] = ""
        L8_10[1700951598] = ""
        L8_10[1702062638] = ""
        L8_10[1635018798] = ""
        L8_10[1936338432] = ""
        L8_10[1819042862] = ""
        L8_10[2019782446] = ""
        L8_10[829648942] = ""
        L8_10[1918986798] = ""
        L8_10[1668511534] = ""
        L8_10[1752397614] = ""
        if L8_10[L9_11] or L8_10[mp.bitand(L9_11, 4294967040)] then
          mp.set_mpattribute("Lua:RarHasFileWithExeExtension")
          if mp.bitand(L2_4, 4) == 4 then
            mp.set_mpattribute("Lua:RarHasEncryptedFileWithExeExtension")
          end
          if headerpage[A0_2 + 25] == 48 then
            mp.set_mpattribute("Lua:RarHasStoredFileWithExeExtension")
          end
        end
      end
    end
  end
  L2_4 = mp
  L2_4 = L2_4.readu_u16
  L3_5 = headerpage
  L4_6 = A0_2 + 5
  L2_4 = L2_4(L3_5, L4_6)
  L2_4 = A0_2 + L2_4
  L3_5 = mp
  L3_5 = L3_5.readu_u32
  L4_6 = headerpage
  L5_7 = A0_2 + 7
  L3_5 = L3_5(L4_6, L5_7)
  L2_4 = L2_4 + L3_5
  return L2_4
end
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L1_1 < 1024 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(headerpage, 1)
if L1_1 ~= 561144146 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L1_1 = L1_1(headerpage, 5)
if L1_1 ~= 1818 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = headerpage
L1_1 = L1_1[7]
if L1_1 == 1 then
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L1_1("Lua:Rar50")
  L1_1 = headerpage
  L1_1 = L1_1[14]
  if L1_1 == 4 then
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L1_1("Lua:RarHasEncryptionHeader")
  end
else
  L1_1 = headerpage
  L1_1 = L1_1[7]
  if L1_1 == 0 then
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L1_1("Lua:Rar4x")
    L1_1 = mp
    L1_1 = L1_1.readu_u16
    L1_1 = L1_1(headerpage, 11)
    if mp.bitand(L1_1, 128) == 128 then
      mp.set_mpattribute("Lua:RarHasEncryptionHeader")
    end
  end
end
L1_1 = 21
while 0 < 3 and L1_1 + 4 < mp.HEADERPAGE_SZ do
  L1_1 = L0_0(L1_1)
end
return mp.CLEAN
