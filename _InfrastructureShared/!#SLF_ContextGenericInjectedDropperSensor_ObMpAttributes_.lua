local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1[".com"] = ""
L1_1[".cpl"] = ""
L1_1[".exe"] = ""
L1_1[".pif"] = ""
L1_1[".scr"] = ""
L1_1[".dll"] = ""
L2_2 = string
L2_2 = L2_2.lower
L3_3 = string
L3_3 = L3_3.sub
L4_4 = mp
L4_4 = L4_4.getfilename
L4_4 = L4_4()
L5_5 = -4
L10_10 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L3_3(L4_4, L5_5))
L3_3 = L1_1[L2_2]
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_SCANREASON
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.SCANREASON_ONMODIFIEDHANDLECLOSE
if L3_3 == L4_4 then
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_NEWLYCREATEDHINT
  L4_4 = L4_4(L5_5)
  if L4_4 == true then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L10_10 = L5_5(L6_6)
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L5_5(L6_6))
    L5_5 = {
      L6_6,
      L7_7,
      L8_8,
      L9_9,
      L10_10,
      "\\grouppolicy\\datastore\\",
      "\\microsoft office\\updates\\download\\packagefiles\\",
      "\\windows\\assembly\\nativeimages",
      "\\microsoft\\windows\\devicesoftwareupdates\\",
      "$windows.~bt\\",
      "\\nvidia\\",
      "\\nvidia corporation\\",
      "\\programs\\python\\",
      "\\lenovo\\",
      "\\windows\\installer\\",
      "\\windows\\system32\\",
      "\\windows\\syswow64\\",
      "\\microsoft\\visualstudio\\",
      "\\drpsu\\programs\\",
      "\\wudownloadcache\\",
      "\\smartsvn\\",
      "\\temp\\_mei",
      "\\hp\\printscout\\"
    }
    L9_9 = "\\filehistory\\"
    L10_10 = "\\windows.old\\"
    for L9_9, L10_10 in L6_6(L7_7) do
      if L4_4:find(L10_10, 1, true) ~= nil then
        return mp.CLEAN
      end
    end
    L10_10 = L7_7(L8_8)
    L9_9 = "|"
    L9_9 = false
    L10_10 = L8_8.find
    L10_10 = L10_10(L8_8, L7_7, 1, true)
    if L10_10 then
      L10_10 = mp
      L10_10 = L10_10.get_mpattribute
      L10_10 = L10_10("BM_MZ_FILE")
      if L10_10 then
        L10_10 = mp
        L10_10 = L10_10.set_mpattribute
        L10_10("TEL:Lua" .. L6_6 .. "GenericDropperMZ_FILE")
        L9_9 = true
      end
      if L9_9 == true then
        L10_10 = mp
        L10_10 = L10_10.INFECTED
        return L10_10
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
