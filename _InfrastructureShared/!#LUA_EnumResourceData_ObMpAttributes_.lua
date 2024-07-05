if mp.getfilesize() > 33554432 then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)):sub(2, 9) ~= ":\\users\\" then
  return mp.CLEAN
end
function EnumResourceCRC32s(A0_0, A1_1, A2_2, A3_3)
  local L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23
  L4_4 = 524288
  L5_5 = 30
  L6_6 = #A3_3
  if L5_5 < L6_6 then
    return A3_3
  end
  if A2_2 > 0 then
    A1_1 = A0_0 + A1_1
  else
    A1_1 = A0_0
  end
  L6_6 = {}
  L6_6[1] = "LUA:HasResType_RT_CURSOR"
  L6_6[2] = "LUA:HasResType_RT_BITMAP"
  L6_6[3] = "LUA:HasResType_RT_ICON"
  L6_6[4] = "LUA:HasResType_RT_MENU"
  L6_6[5] = "LUA:HasResType_RT_DIALOG"
  L6_6[6] = "LUA:HasResType_RT_STRING"
  L6_6[7] = "LUA:HasResType_RT_FONTDIR"
  L6_6[8] = "LUA:HasResType_RT_FONT"
  L6_6[9] = "LUA:HasResType_RT_ACCELERATOR"
  L6_6[10] = "LUA:HasResType_RT_RCDATA"
  L6_6[11] = "LUA:HasResType_RT_MESSAGETABLE"
  L6_6[12] = "LUA:HasResType_RT_GROUP_CURSOR"
  L6_6[14] = "LUA:HasResType_RT_GROUP_ICON"
  L6_6[16] = "LUA:HasResType_RT_VERSION"
  L6_6[17] = "LUA:HasResType_RT_DLGINCLUDE"
  L6_6[19] = "LUA:HasResType_RT_PLUGPLAY"
  L6_6[20] = "LUA:HasResType_RT_VXD"
  L6_6[21] = "LUA:HasResType_RT_ANICURSOR"
  L6_6[22] = "LUA:HasResType_RT_ANIICON"
  L6_6[23] = "LUA:HasResType_RT_HTML"
  L6_6[24] = "LUA:HasResType_RT_MANIFEST"
  L7_7 = pe
  L7_7 = L7_7.mmap_rva
  L8_8 = A1_1
  L9_9 = 16
  L7_7 = L7_7(L8_8, L9_9)
  L8_8 = mp
  L8_8 = L8_8.readu_u16
  L9_9 = L7_7
  L10_10 = 13
  L8_8 = L8_8(L9_9, L10_10)
  L9_9 = mp
  L9_9 = L9_9.readu_u16
  L10_10 = L7_7
  L9_9 = L9_9(L10_10, L11_11)
  L10_10 = L9_9 + L8_8
  if L10_10 == 0 then
    return A3_3
  end
  for L14_14 = 0, L10_10 - 1 do
    L15_15 = L14_14 * 8
    L15_15 = L15_15 + 16
    L15_15 = L15_15 + A1_1
    L16_16 = pe
    L16_16 = L16_16.mmap_rva
    L17_17 = L15_15
    L18_18 = 8
    L16_16 = L16_16(L17_17, L18_18)
    L17_17 = mp
    L17_17 = L17_17.readu_u32
    L18_18 = L16_16
    L19_19 = 5
    L17_17 = L17_17(L18_18, L19_19)
    L18_18 = mp
    L18_18 = L18_18.readu_u32
    L19_19 = L16_16
    L20_20 = 1
    L18_18 = L18_18(L19_19, L20_20)
    if L14_14 >= L8_8 and A2_2 == 0 then
      L19_19 = L6_6[L18_18]
      if L19_19 then
        L19_19 = mp
        L19_19 = L19_19.set_mpattribute
        L20_20 = L6_6[L18_18]
        L19_19(L20_20)
      end
    end
    L19_19 = mp
    L19_19 = L19_19.bitand
    L20_20 = L17_17
    L21_21 = 268435455
    L19_19 = L19_19(L20_20, L21_21)
    L20_20 = mp
    L20_20 = L20_20.bitand
    L21_21 = L17_17
    L22_22 = 2147483648
    L20_20 = L20_20(L21_21, L22_22)
    if L20_20 ~= 0 then
      if A2_2 < 3 then
        L20_20 = EnumResourceCRC32s
        L21_21 = A0_0
        L22_22 = L19_19
        L23_23 = A2_2 + 1
        L20_20(L21_21, L22_22, L23_23, A3_3)
      end
    else
      L20_20 = pe
      L20_20 = L20_20.mmap_rva
      L21_21 = A0_0 + L19_19
      L22_22 = 16
      L20_20 = L20_20(L21_21, L22_22)
      L21_21 = mp
      L21_21 = L21_21.readu_u32
      L22_22 = L20_20
      L23_23 = 1
      L21_21 = L21_21(L22_22, L23_23)
      L22_22 = mp
      L22_22 = L22_22.readu_u32
      L23_23 = L20_20
      L22_22 = L22_22(L23_23, 5)
      if L4_4 <= L22_22 then
        return A3_3
      end
      L23_23 = pe
      L23_23 = L23_23.mmap_rva
      L23_23 = L23_23(L21_21, L22_22)
      A3_3[#A3_3 + 1] = mp.crc32(-1, L23_23, 1, 0)
    end
  end
  return A3_3
end
function GetResourceCRC32s()
  local L0_24, L1_25, L2_26
  L0_24 = {}
  L1_25 = peattributes
  L1_25 = L1_25.isdll
  if not L1_25 then
    L1_25 = peattributes
    L1_25 = L1_25.isexe
  elseif L1_25 then
    L1_25 = pehdr
    L1_25 = L1_25.DataDirectory
    L2_26 = pe
    L2_26 = L2_26.IMAGE_DIRECTORY_ENTRY_RESOURCE
    L1_25 = L1_25[L2_26]
    L1_25 = L1_25.RVA
    L2_26 = pehdr
    L2_26 = L2_26.DataDirectory
    L2_26 = L2_26[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]
    L2_26 = L2_26.Size
    if L1_25 > 0 and L2_26 > 0 then
      mp.readprotection(false)
      EnumResourceCRC32s(L1_25, 0, 0, L0_24)
      mp.readprotection(true)
    end
  end
  return L0_24
end
if #GetResourceCRC32s() < 5 then
  mp.set_mpattribute("LUA:ResourceDataEntryLT5")
end
if #GetResourceCRC32s() >= 5 then
  mp.set_mpattribute("LUA:ResourceDataEntryGE5")
end
if #GetResourceCRC32s() >= 10 then
  mp.set_mpattribute("LUA:ResourceDataEntryGE10")
end
if #GetResourceCRC32s() >= 15 then
  mp.set_mpattribute("LUA:ResourceDataEntryGE15")
end
if #GetResourceCRC32s() >= 20 then
  mp.set_mpattribute("LUA:ResourceDataEntryGE20")
end
for _FORV_6_ = 1, #GetResourceCRC32s() do
  if ({
    [3404687433] = "LUA:ConstructorIconFile1"
  })[GetResourceCRC32s()[_FORV_6_]] ~= nil then
    mp.set_mpattribute(({
      [3404687433] = "LUA:ConstructorIconFile1"
    })[GetResourceCRC32s()[_FORV_6_]])
  end
end
return _FOR_.CLEAN
