local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
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
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = "enghipscpy:blockexecution:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.IsPathExcludedForHipsRule
L3_3 = L1_1
L4_4 = "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.QueryPersistContext
L3_3 = L1_1
L4_4 = L0_0
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "MpDisableCaching"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
else
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_DEVICE_CHARACTERISTICS
  L2_2 = L2_2(L3_3)
  L3_3 = versioning
  L3_3 = L3_3.GetOrgID
  L3_3 = L3_3()
  if L3_3 ~= nil and L3_3 ~= "" and L3_3 == "d4f6568c-6759-4e52-b6d5-1f957e335c91" then
    L4_4 = mp
    L4_4 = L4_4.bitand
    L5_5 = L2_2
    L6_6 = 1
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= 1 then
      L4_4 = mp
      L4_4 = L4_4.bitand
      L5_5 = L2_2
      L6_6 = 262144
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= 262144 then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
    end
  else
    L4_4 = mp
    L4_4 = L4_4.bitand
    L5_5 = L2_2
    L6_6 = 264193
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= 264193 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  L4_4 = MpCommon
  L4_4 = L4_4.ExpandEnvironmentVariables
  L5_5 = "%systemdrive%"
  L4_4 = L4_4(L5_5)
  if L4_4 == nil or L4_4 == "" then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L1_1
  L7_7 = "^"
  L8_8 = L4_4
  L7_7 = L7_7 .. L8_8
  L5_5 = L5_5(L6_6, L7_7)
  if L5_5 ~= nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L2_2 = {}
L2_2["cmd.exe"] = true
L2_2["powershell.exe"] = true
L2_2["wscript.exe"] = true
L2_2["cscript.exe"] = true
L2_2["schtasks.exe"] = true
L2_2["at.exe"] = true
L2_2["bitsadmin.exe"] = true
L2_2["mshta.exe"] = true
L2_2["rundll32.exe"] = true
L2_2["regasm.exe"] = true
L2_2["regsvc.exe"] = true
L2_2["regsvr32.exe"] = true
L2_2["msbuild.exe"] = true
L2_2["certutil.exe"] = true
L2_2["installutil.exe"] = true
L2_2["msiexec.exe"] = true
L3_3 = {}
L3_3.exe = true
L3_3.msi = true
L3_3.js = true
L3_3.vbs = true
L3_3.ps1 = true
L3_3.cmd = true
L3_3.bat = true
L4_4 = mp
L4_4 = L4_4.GetLnkInfo
L4_4 = L4_4()
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = false
L6_6 = L4_4.BasePath
if L6_6 ~= nil then
  L7_7 = mp
  L7_7 = L7_7.ContextualExpandEnvironmentVariables
  L8_8 = L6_6
  L7_7 = L7_7(L8_8)
  L6_6 = L7_7
  if L6_6 ~= nil then
    L7_7 = MpCommon
    L7_7 = L7_7.PathToWin32Path
    L8_8 = L6_6
    L7_7 = L7_7(L8_8)
    L6_6 = L7_7
    if L6_6 ~= nil then
      L7_7 = string
      L7_7 = L7_7.lower
      L8_8 = L6_6
      L7_7 = L7_7(L8_8)
      L6_6 = L7_7
      L7_7 = sysio
      L7_7 = L7_7.IsFileExists
      L8_8 = L6_6
      L7_7 = L7_7(L8_8)
      if L7_7 then
        L7_7 = string
        L7_7 = L7_7.match
        L8_8 = L6_6
        L9_9 = "\\.+%.([^%.\\]+)$"
        L7_7 = L7_7(L8_8, L9_9)
        L8_8 = string
        L8_8 = L8_8.match
        L9_9 = L6_6
        L8_8 = L8_8(L9_9, "\\([^\\]+%.exe)$")
        L8_8 = L2_2[L8_8]
        if L8_8 ~= true then
          if L7_7 ~= nil and L7_7 ~= "" then
            L8_8 = L3_3[L7_7]
            if L8_8 == true then
              L8_8 = mp
              L8_8 = L8_8.IsKnownFriendlyFile
              L9_9 = L6_6
              L8_8 = L8_8(L9_9, false, true)
            end
          end
        elseif not L8_8 then
          L5_5 = true
        end
      end
    end
  end
end
if L5_5 == false then
  L7_7 = L4_4.RelativePath
  if L7_7 == nil or L7_7 == "" then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = string
  L8_8 = L8_8.lower
  L9_9 = L7_7
  L8_8 = L8_8(L9_9)
  L7_7 = L8_8
  L8_8 = mp
  L8_8 = L8_8.getfilename
  L9_9 = mp
  L9_9 = L9_9.FILEPATH_QUERY_PATH
  L8_8 = L8_8(L9_9)
  if L8_8 == nil or L8_8 == "" then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = MpCommon
  L9_9 = L9_9.PathToWin32Path
  L9_9 = L9_9(L8_8)
  L8_8 = L9_9
  if L8_8 == nil or L8_8 == "" then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = string
  L9_9 = L9_9.lower
  L9_9 = L9_9(L8_8)
  L8_8 = L9_9
  L9_9 = nil
  if string.find(L7_7, "^%.%.\\") then
    L9_9 = L8_8 .. "\\" .. L7_7
  elseif string.find(L7_7, "^%.\\") then
    L7_7 = string.match(L7_7, "^%.\\(.+)$")
    L9_9 = L8_8 .. "\\" .. L7_7
  else
    return mp.CLEAN
  end
  if sysio.IsFileExists(L9_9) and (L2_2[string.match(L9_9, "\\([^\\]+%.exe)$")] == true or string.match(L9_9, "\\.+%.([^%.\\]+)$") ~= nil and string.match(L9_9, "\\.+%.([^%.\\]+)$") ~= "" and L3_3[string.match(L9_9, "\\.+%.([^%.\\]+)$")] == true and not mp.IsKnownFriendlyFile(L9_9, false, true)) then
    L5_5 = true
  end
end
if L5_5 == false then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.set_mpattribute
L8_8 = "MpDisableCaching"
L7_7(L8_8)
L7_7 = MpCommon
L7_7 = L7_7.GetPersistContextCount
L8_8 = L1_1
L7_7 = L7_7(L8_8)
if L7_7 == 0 then
  L7_7 = {}
  L8_8 = table
  L8_8 = L8_8.insert
  L9_9 = L7_7
  L8_8(L9_9, L0_0)
  L8_8 = MpCommon
  L8_8 = L8_8.SetPersistContext
  L9_9 = L1_1
  L8_8(L9_9, L7_7, 0)
else
  L7_7 = MpCommon
  L7_7 = L7_7.QueryPersistContext
  L8_8 = L1_1
  L9_9 = L0_0
  L7_7 = L7_7(L8_8, L9_9)
  if not L7_7 then
    L7_7 = MpCommon
    L7_7 = L7_7.AppendPersistContext
    L8_8 = L1_1
    L9_9 = L0_0
    L7_7(L8_8, L9_9, 0)
  end
end
L7_7 = mp
L7_7 = L7_7.INFECTED
return L7_7
