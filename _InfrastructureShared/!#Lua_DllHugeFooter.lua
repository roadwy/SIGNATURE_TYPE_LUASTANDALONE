local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasexports
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[1]
L0_0 = L0_0.Size
if L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.ismsil
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isvbnative
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isvbpcode
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Win32/AutoIt"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Win32/AutoIt_HSTR1"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Win32/AutoIt_HSTR2"
    L0_0 = L0_0(L1_1)
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "HSTR:Win32/DelphiFile"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "SIGATTR:DelphiFile"
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "HSTR:NSIS.gen!A"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "HSTR:NSIS_Installer"
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "ValidDigitalSignature"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
  L1_1 = L1_1(L2_2)
  L2_2 = {}
  L2_2[".exe"] = true
  L2_2[".dll"] = true
  L2_2[".cpl"] = true
  L2_2[".ocx"] = true
  L2_2[".pyd"] = true
  L2_2[".pyc"] = true
  L2_2[".tmp"] = true
  L2_2[".zip"] = true
  L2_2[".rar"] = true
  L2_2[".dat"] = true
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
  L4_4 = L3_3
  L3_3 = L3_3.sub
  L5_5 = -4
  L3_3 = L3_3(L4_4, L5_5)
  L3_3 = L2_2[L3_3]
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.getfilesize
  L3_3 = L3_3()
  if L3_3 > 52428800 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  if L3_3 < 10485760 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = pehdr
  L4_4 = L4_4.NumberOfSections
  L5_5 = pesecs
  L5_5 = L5_5[1]
  L5_5 = L5_5.SizeOfRawData
  L6_6 = peattributes
  L6_6 = L6_6.hasappendeddata
  if L6_6 then
    if L4_4 == 5 then
      if L5_5 <= 237568 and L5_5 >= 36864 then
        L6_6 = pesecs
        L6_6 = L6_6[L4_4]
        L6_6 = L6_6.PointerToRawData
        L7_7 = pesecs
        L7_7 = L7_7[L4_4]
        L7_7 = L7_7.SizeOfRawData
        L6_6 = L6_6 + L7_7
        L7_7 = L3_3 - L6_6
        if L7_7 > 51380224 then
          L8_8 = mp
          L8_8 = L8_8.CLEAN
          return L8_8
        end
        if L7_7 < 10485760 then
          L8_8 = mp
          L8_8 = L8_8.CLEAN
          return L8_8
        end
        L8_8 = mp
        L8_8 = L8_8.readprotection
        L8_8(false)
        L8_8 = mp
        L8_8 = L8_8.readfile
        L8_8 = L8_8(L6_6, 16)
        if string.find(L8_8, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
          mp.set_mpattribute("Lua:DllGamObfusHugeOverlay")
        end
      end
    elseif L4_4 == 3 then
      L6_6 = pesecs
      L6_6 = L6_6[2]
      L5_5 = L6_6.SizeOfRawData
      if L5_5 <= 237568 and L5_5 >= 36864 then
        L6_6 = pesecs
        L6_6 = L6_6[L4_4]
        L6_6 = L6_6.PointerToRawData
        L7_7 = pesecs
        L7_7 = L7_7[L4_4]
        L7_7 = L7_7.SizeOfRawData
        L6_6 = L6_6 + L7_7
        L7_7 = L3_3 - L6_6
        if L7_7 > 51380224 then
          L8_8 = mp
          L8_8 = L8_8.CLEAN
          return L8_8
        end
        if L7_7 < 10485760 then
          L8_8 = mp
          L8_8 = L8_8.CLEAN
          return L8_8
        end
        L8_8 = mp
        L8_8 = L8_8.readprotection
        L8_8(false)
        L8_8 = mp
        L8_8 = L8_8.readfile
        L8_8 = L8_8(L6_6, 16)
        if string.find(L8_8, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
          mp.set_mpattribute("//Lua:DllUpxHugeOverlay")
        end
      end
    end
  else
    L6_6 = peattributes
    L6_6 = L6_6.hasappendeddata
    if not L6_6 and L4_4 == 6 and L5_5 <= 65536 and L5_5 >= 24576 then
      L6_6 = pesecs
      L6_6 = L6_6[L4_4]
      L6_6 = L6_6.SizeOfRawData
      L7_7 = pesecs
      L7_7 = L7_7[L4_4]
      L7_7 = L7_7.PointerToRawData
      if L6_6 > 51380224 then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
      if L6_6 < 10485760 then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
      L8_8 = mp
      L8_8 = L8_8.readprotection
      L8_8(false)
      L8_8 = mp
      L8_8 = L8_8.readfile
      L8_8 = L8_8(L7_7, 16)
      if string.find(L8_8, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
        mp.set_mpattribute("Lua:DllGamObfusHugeLastSection")
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
