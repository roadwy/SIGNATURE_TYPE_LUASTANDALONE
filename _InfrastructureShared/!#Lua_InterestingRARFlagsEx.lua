local L0_0, L1_1, L2_2, L3_3, L4_4
function L2_2(A0_5, A1_6)
  local L2_7, L3_8, L4_9, L5_10, L6_11, L7_12, L8_13, L9_14
  L2_7 = A0_5 + 7
  if A1_6 < L2_7 then
    L2_7 = 0
    return L2_7
  end
  L2_7 = mp
  L2_7 = L2_7.readfile
  L3_8 = A0_5
  L4_9 = 7
  L2_7 = L2_7(L3_8, L4_9)
  L3_8 = string
  L3_8 = L3_8.byte
  L4_9 = L2_7
  L5_10 = 3
  L3_8 = L3_8(L4_9, L5_10)
  L4_9 = mp
  L4_9 = L4_9.readu_u16
  L5_10 = L2_7
  L6_11 = 6
  L4_9 = L4_9(L5_10, L6_11)
  L5_10 = 0
  if L3_8 == 122 then
    L6_11 = A0_5 + 48
    if A1_6 > L6_11 then
      L6_11 = mp
      L6_11 = L6_11.readfile
      L7_12 = A0_5
      L8_13 = 48
      L6_11 = L6_11(L7_12, L8_13)
      L2_7 = L6_11
      L6_11 = mp
      L6_11 = L6_11.readu_u32
      L7_12 = L2_7
      L8_13 = 8
      L6_11 = L6_11(L7_12, L8_13)
      L5_10 = L6_11
      L6_11 = string
      L6_11 = L6_11.byte
      L7_12 = L2_7
      L8_13 = 27
      L6_11 = L6_11(L7_12, L8_13)
      if L6_11 == 3 then
        L6_11 = string
        L6_11 = L6_11.sub
        L7_12 = L2_7
        L8_13 = 33
        L9_14 = 35
        L6_11 = L6_11(L7_12, L8_13, L9_14)
        if L6_11 == "CMT" then
          L6_11 = mp
          L6_11 = L6_11.set_mpattribute
          L7_12 = "Lua:RarHasCommentBlock"
          L6_11(L7_12)
        end
      end
    end
  elseif L3_8 == 116 then
    L6_11 = A0_5 + 48
    if A1_6 > L6_11 then
      L6_11 = _UPVALUE0_
      L6_11 = L6_11 + 1
      _UPVALUE0_ = L6_11
      L6_11 = mp
      L6_11 = L6_11.readfile
      L7_12 = A0_5
      L8_13 = 48
      L6_11 = L6_11(L7_12, L8_13)
      L2_7 = L6_11
      L6_11 = mp
      L6_11 = L6_11.readu_u32
      L7_12 = L2_7
      L8_13 = 8
      L6_11 = L6_11(L7_12, L8_13)
      L5_10 = L6_11
      L6_11 = string
      L6_11 = L6_11.byte
      L7_12 = L2_7
      L8_13 = 26
      L6_11 = L6_11(L7_12, L8_13)
      if L6_11 == 48 then
        L6_11 = mp
        L6_11 = L6_11.set_mpattribute
        L7_12 = "Lua:RarHasStoredFile"
        L6_11(L7_12)
      end
      L6_11 = mp
      L6_11 = L6_11.readu_u16
      L7_12 = L2_7
      L8_13 = 4
      L6_11 = L6_11(L7_12, L8_13)
      L7_12 = mp
      L7_12 = L7_12.bitand
      L8_13 = L6_11
      L9_14 = 4
      L7_12 = L7_12(L8_13, L9_14)
      if L7_12 == 4 then
        L7_12 = mp
        L7_12 = L7_12.set_mpattribute
        L8_13 = "Lua:RarHasEncryptedFile"
        L7_12(L8_13)
      end
      L7_12 = mp
      L7_12 = L7_12.readu_u16
      L8_13 = L2_7
      L9_14 = 27
      L7_12 = L7_12(L8_13, L9_14)
      if L7_12 > 4 and L7_12 < 288 then
        L8_13 = 32
        L9_14 = mp
        L9_14 = L9_14.bitand
        L9_14 = L9_14(L6_11, 256)
        if L9_14 == 256 then
          L8_13 = L8_13 + 8
        end
        L9_14 = A0_5 + L8_13
        L9_14 = L9_14 + L7_12
        if A1_6 > L9_14 then
          L9_14 = mp
          L9_14 = L9_14.readfile
          L9_14 = L9_14(A0_5 + L8_13, L7_12)
          if L7_12 > 8 and L7_12 < 64 and L9_14:find("[Pp][Aa][Ss][Ss][Ww][Oo][Rr][Dd]") or L7_12 > 8 and L7_12 < 64 and L9_14:find("[Tt][Oo] [Oo][Pp][Ee][Nn]") then
            mp.set_mpattribute("Lua:RarHasFileNameWithPassword")
          end
          if L9_14 == "to open enter 1234" and L5_10 == 1 or L9_14 == "1 2 3 4" and L5_10 == 1 then
            mp.set_mpattribute("Lua:RarHasMizenotaPWFile")
          end
          if ({
            [".bat"] = "",
            [".cmd"] = "",
            [".com"] = "",
            [".cpl"] = "",
            [".exe"] = "",
            [".pif"] = "",
            [".scr"] = "",
            [".vbs"] = "",
            [".lnk"] = "",
            [".wsf"] = "",
            [".vbe"] = "",
            [".jse"] = "",
            [".hta"] = "",
            [".js"] = ""
          })[string.sub(L9_14, -4)] or ({
            [".bat"] = "",
            [".cmd"] = "",
            [".com"] = "",
            [".cpl"] = "",
            [".exe"] = "",
            [".pif"] = "",
            [".scr"] = "",
            [".vbs"] = "",
            [".lnk"] = "",
            [".wsf"] = "",
            [".vbe"] = "",
            [".jse"] = "",
            [".hta"] = "",
            [".js"] = ""
          })[string.sub(L9_14, -3)] then
            mp.set_mpattribute("Lua:RarHasFileWithExeExtension")
            _UPVALUE1_ = _UPVALUE1_ + 1
            if mp.bitand(L6_11, 4) == 4 then
              mp.set_mpattribute("Lua:RarHasEncryptedFileWithExeExtension")
            end
            if string.byte(L2_7, 26) == 48 then
              mp.set_mpattribute("Lua:RarHasStoredFileWithExeExtension")
            end
          end
        end
      end
    end
  elseif L3_8 ~= 115 then
    L6_11 = 0
    return L6_11
  end
  L6_11 = A0_5 + L4_9
  L6_11 = L6_11 + L5_10
  return L6_11
end
L3_3 = mp
L3_3 = L3_3.HEADERPAGE_SZ
if L3_3 < 1024 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = headerpage
L3_3 = L3_3(L4_4, 1)
if L3_3 ~= 561144146 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = headerpage
L3_3 = L3_3(L4_4, 5)
if L3_3 ~= 1818 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
L4_4 = mp
L4_4 = L4_4.get_mpattribute
L4_4 = L4_4("Lua:RarHasFileNameWithPassword")
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.get_mpattribute
  L4_4 = L4_4("Lua:RarHasEncryptedFile")
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.get_mpattribute
    L4_4 = L4_4("Lua:RarHasStoredFileWithExeExtension")
  end
else
  if L4_4 and L3_3 < 8388608 and L3_3 > 4096 then
    L4_4 = mp
    L4_4 = L4_4.get_mpattribute
    L4_4 = L4_4("RPF:AnyFileHasIOAVURL")
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.get_mpattribute
      L4_4 = L4_4("RPF:TopLevelFile")
    end
end
else
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.get_mpattribute
    L4_4 = L4_4("Lua:RarHasFileWithExeExtension")
    if L4_4 and L3_3 < 100000 and L3_3 > 512 then
      L4_4 = mp
      L4_4 = L4_4.get_mpattribute
      L4_4 = L4_4("RPF:TopLevelFile")
    end
end
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.readprotection
  L4_4(false)
  L4_4 = 7
  L0_0 = 0
  L1_1 = 0
  while 0 < 10 and L4_4 ~= 0 do
    L4_4 = L2_2(L4_4, L3_3)
  end
  if L0_0 == 1 and L1_1 == 1 then
    if mp.get_mpattribute("RPF:AnyFileHasIOAVURL") then
      if mp.get_mpattribute("Lua:RarHasStoredFileWithExeExtension") then
        mp.set_mpattribute("Lua:RarHasSingleStoredFileWithExeExtension")
        mp.set_mpattribute("//Lua:GIOAVTopLevelRarHasSingleStoredFileWithExeExtension")
      else
        mp.set_mpattribute("//Lua:GIOAVTopLevelRarHasSingleFileWithExeExtension")
      end
    end
    mp.set_mpattribute("Lua:RarHasSingleFileWithExeExtension")
  end
  if L0_0 == 1 then
    mp.set_mpattribute("Lua:SingleFileInRar")
    mp.UfsSetMetadataBool("Lua:SingleFileInRar", true)
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
