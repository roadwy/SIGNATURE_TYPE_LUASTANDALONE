local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if L0_0 then
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
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 209715200 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 < 52428800 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
if L1_1 > 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 < 3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pesecs
L2_2 = L2_2[1]
L2_2 = L2_2.SizeOfRawData
if L2_2 <= 196608 and L2_2 >= 36864 then
  L3_3 = pesecs
  L3_3 = L3_3[L1_1]
  L3_3 = L3_3.SizeOfRawData
  L4_4 = pesecs
  L4_4 = L4_4[L1_1]
  L4_4 = L4_4.PointerToRawData
  if L3_3 > 208666624 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  if L3_3 < 51380224 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.readprotection
  L5_5(false)
  L5_5 = mp
  L5_5 = L5_5.readfile
  L5_5 = L5_5(L4_4, 16)
  if string.find(L5_5, "%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]%z[^%z][^%z][^%z]") then
    if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(-4) ~= ".exe" then
      return mp.CLEAN
    end
    if (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-10) == "\\all users" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-12) == "\\programdata" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-17) == "\\application data" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-16) == "\\appdata\\roaming") and (mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(1, 2) == "ms" or mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(1, 2) == "ob") then
      mp.set_mpattribute("Lua:ExeGamObfusHugeLastSection")
    end
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
