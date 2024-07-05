local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "5beb7efe-fd9a-4556-801d-275e5ffc04cc"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "RPF:TopLevelFile"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:FileInZip"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Lua:FileIn7z"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "Lua:FileInRar"
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Nscript:Type_js"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Nscript:Type_vbs"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Nscript:Type_ps"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "Lua:JSExt"
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.get_mpattribute
        L1_1 = "Lua:VBSExt"
        L0_0 = L0_0(L1_1)
        if not L0_0 then
          L0_0 = mp
          L0_0 = L0_0.get_mpattribute
          L1_1 = "Lua:PS1Ext"
          L0_0 = L0_0(L1_1)
          if not L0_0 then
            L0_0 = mp
            L0_0 = L0_0.get_mpattribute
            L1_1 = "LUA:WSFExt"
            L0_0 = L0_0(L1_1)
            if not L0_0 then
              L0_0 = mp
              L0_0 = L0_0.CLEAN
              return L0_0
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILENAME
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = false
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0
L4_4 = "(%.[^%.]+)$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == ".psd1" or L2_2 == ".psm1" or L2_2 == ".ps1xml" or L2_2 == ".psrc" or L2_2 == ".pssc" or L2_2 == ".cdxml" or L2_2 == ".testpasses" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 == ".ps1" then
  L1_1 = true
end
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L4_4 = "RPF:ObfusJsVbs:Probability"
L3_3 = L3_3(L4_4)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_mpattributevalue
L4_4 = "RPF:ObfusJsVbs:Probability"
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 < 75 or L3_3 > 100 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = false
L5_5 = false
L6_6 = false
L7_7 = mp
L7_7 = L7_7.get_contextdata
L8_8 = mp
L8_8 = L8_8.CONTEXT_DATA_HAS_MOTW_ADS
L7_7 = L7_7(L8_8)
if L7_7 == true then
  L7_7 = mp
  L7_7 = L7_7.GetMOTWZone
  L7_7 = L7_7()
  if L7_7 == 3 then
    L4_4 = true
  end
end
L7_7 = mp
L7_7 = L7_7.get_mpattribute
L8_8 = "Lua:FileInZip"
L7_7 = L7_7(L8_8)
if not L7_7 then
  L7_7 = mp
  L7_7 = L7_7.get_mpattribute
  L8_8 = "Lua:FileIn7z"
  L7_7 = L7_7(L8_8)
  if not L7_7 then
    L7_7 = mp
    L7_7 = L7_7.get_mpattribute
    L8_8 = "Lua:FileInRar"
    L7_7 = L7_7(L8_8)
  end
elseif L7_7 then
  L5_5 = true
  L7_7 = mp
  L7_7 = L7_7.UfsGetMetadataBool
  L8_8 = "Lua:ZipWithMotwAll"
  L9_9 = true
  L8_8 = L7_7(L8_8, L9_9)
  if L7_7 == 0 and L8_8 ~= nil then
    L6_6 = true
  end
end
L7_7 = false
if L1_1 == false then
  if L6_6 == true and L3_3 >= 85 then
    L7_7 = true
  end
  if L5_5 == true and L3_3 >= 90 then
    L7_7 = true
  end
  if L4_4 == true and L3_3 >= 95 then
    L7_7 = true
  end
  if L3_3 >= 99 then
    L7_7 = true
  end
else
  if L6_6 == true and L3_3 >= 75 then
    L7_7 = true
  end
  if L5_5 == true and L3_3 >= 80 then
    L7_7 = true
  end
  if L4_4 == true and L3_3 >= 85 then
    L7_7 = true
  end
  if L3_3 >= 90 then
    L7_7 = true
  end
end
if L7_7 == false then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = mp
L8_8 = L8_8.IsTrustedFile
L9_9 = false
L9_9 = L8_8(L9_9)
if L8_8 == true then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = mp
L10_10 = L10_10.getfilename
L11_11 = mp
L11_11 = L11_11.FILEPATH_QUERY_FULL
L10_10 = L10_10(L11_11)
if L10_10 == nil or L10_10 == "" then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = MpCommon
L11_11 = L11_11.PathToWin32Path
L11_11 = L11_11(L10_10)
L10_10 = L11_11
if L10_10 == nil or L10_10 == "" then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = string
L11_11 = L11_11.lower
L11_11 = L11_11(L10_10)
L10_10 = L11_11
L11_11 = mp
L11_11 = L11_11.IsPathExcludedForHipsRule
L11_11 = L11_11(L10_10, "5beb7efe-fd9a-4556-801d-275e5ffc04cc")
if L11_11 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = mp
L11_11 = L11_11.set_mpattribute
L11_11("MpDisableCaching")
L11_11 = mp
L11_11 = L11_11.get_contextdata
L11_11 = L11_11(mp.CONTEXT_DATA_SCANREASON)
if L11_11 == mp.SCANREASON_ONOPEN then
  L11_11 = string
  L11_11 = L11_11.find
  L11_11 = L11_11(L10_10, ">%[msilres")
  if L11_11 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("LUA:InsideMSILRES")
    L11_11 = mp
    L11_11 = L11_11.CLEAN
    return L11_11
  end
  L11_11 = mp
  L11_11 = L11_11.get_contextdata
  L11_11 = L11_11(mp.CONTEXT_DATA_PROCESSNAME)
  if L11_11 == nil or L11_11 == "" then
    return mp.CLEAN
  end
  L11_11 = string.lower(L11_11)
  if ({
    ["cscript.exe"] = true,
    ["wscript.exe"] = true,
    ["winword.exe"] = true,
    ["powerpnt.exe"] = true,
    ["excel.exe"] = true,
    ["powershell.exe"] = true
  })[L11_11] == true then
    if L11_11 == "powershell.exe" then
      if L1_1 then
        return mp.INFECTED
      end
    else
      return mp.INFECTED
    end
  end
end
L11_11 = mp
L11_11 = L11_11.CLEAN
return L11_11
