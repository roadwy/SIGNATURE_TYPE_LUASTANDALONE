local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.IsHipsRuleEnabled
L2_2 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = mp
L3_3 = L3_3.IsPathExcludedForHipsRule
L4_4 = L2_2
L5_5 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.SCANREASON_ONOPEN
if L0_0 == L3_3 then
  L3_3 = MpCommon
  L3_3 = L3_3.QueryPersistContext
  L4_4 = L2_2
  L5_5 = L1_1
  L3_3 = L3_3(L4_4, L5_5)
  if not L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L4_4 = "MpDisableCaching"
  L3_3(L4_4)
  L3_3 = mp
  L3_3 = L3_3.SetHipsRule
  L4_4 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
  L3_3(L4_4)
  L3_3 = mp
  L3_3 = L3_3.BLOCKEXECUTION
  return L3_3
else
  L3_3 = mp
  L3_3 = L3_3.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 == L3_3 then
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_NEWLYCREATEDHINT
    L3_3 = L3_3(L4_4)
    if L3_3 ~= true then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = IsEmailCachePath
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = mp
      L4_4 = L4_4.get_contextdata
      L5_5 = mp
      L5_5 = L5_5.CONTEXT_DATA_PROCESSNAME
      L6_6 = L4_4(L5_5)
      L3_3 = L3_3(L4_4, L5_5, L6_6, L4_4(L5_5))
      if L3_3 ~= "outlook.exe" and L3_3 ~= "olk.exe" and L3_3 ~= "msedgewebview2.exe" then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      if L3_3 == "msedgewebview2.exe" then
        L4_4 = mp
        L4_4 = L4_4.get_contextdata
        L5_5 = mp
        L5_5 = L5_5.CONTEXT_DATA_PROCESS_PPID
        L4_4 = L4_4(L5_5)
        L5_5 = string
        L5_5 = L5_5.lower
        L6_6 = mp
        L6_6 = L6_6.GetProcessCommandLine
        L6_6 = L6_6(L4_4)
        L5_5 = L5_5(L6_6, L6_6(L4_4))
        if L5_5 ~= nil then
          L6_6 = string
          L6_6 = L6_6.len
          L6_6 = L6_6(L5_5)
        elseif L6_6 == 0 then
          L6_6 = mp
          L6_6 = L6_6.CLEAN
          return L6_6
        end
        L6_6 = string
        L6_6 = L6_6.match
        L6_6 = L6_6(L5_5, "%-%-webview%-exe%-name=([^%s]+)")
        if L6_6 ~= "outlook.exe" and L6_6 ~= "olk.exe" then
          return mp.CLEAN
        end
      end
    end
    L3_3 = mp
    L3_3 = L3_3.getfilename
    L4_4 = mp
    L4_4 = L4_4.bitor
    L5_5 = mp
    L5_5 = L5_5.FILEPATH_QUERY_FNAME
    L6_6 = mp
    L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
    L6_6 = L4_4(L5_5, L6_6)
    L3_3 = L3_3(L4_4, L5_5, L6_6, L4_4(L5_5, L6_6))
    if L3_3 ~= nil then
      L4_4 = string
      L4_4 = L4_4.len
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
    elseif L4_4 < 4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.sub
    L5_5 = L3_3
    L6_6 = -4
    L4_4 = L4_4(L5_5, L6_6)
    L5_5 = L4_4
    L4_4 = L4_4.match
    L6_6 = "%.(%w+)$"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 == nil then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = IsArchiveFileExt
    L6_6 = L4_4
    L5_5 = L5_5(L6_6)
    if L5_5 then
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L6_6 = "MpDisableCaching"
      L5_5(L6_6)
      L5_5 = mp
      L5_5 = L5_5.get_mpattribute
      L6_6 = "Lua:ZipHasEncryptedFileWithExeExtension"
      L5_5 = L5_5(L6_6)
      if not L5_5 then
        L5_5 = mp
        L5_5 = L5_5.get_mpattribute
        L6_6 = "Lua:RarHasEncryptedFileWithExeExtension"
        L5_5 = L5_5(L6_6)
      elseif L5_5 then
        L5_5 = MpCommon
        L5_5 = L5_5.GetPersistContextCount
        L6_6 = L2_2
        L5_5 = L5_5(L6_6)
        if L5_5 == 0 then
          L5_5 = {}
          L6_6 = table
          L6_6 = L6_6.insert
          L6_6(L5_5, L1_1)
          L6_6 = MpCommon
          L6_6 = L6_6.SetPersistContext
          L6_6(L2_2, L5_5, 0)
        else
          L5_5 = MpCommon
          L5_5 = L5_5.QueryPersistContext
          L6_6 = L2_2
          L5_5 = L5_5(L6_6, L1_1)
          if not L5_5 then
            L5_5 = MpCommon
            L5_5 = L5_5.AppendPersistContext
            L6_6 = L2_2
            L5_5(L6_6, L1_1, 0)
          end
        end
        L5_5 = mp
        L5_5 = L5_5.SetHipsRule
        L6_6 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
        L5_5(L6_6)
        L5_5 = mp
        L5_5 = L5_5.BLOCKACCESS
        return L5_5
      end
      L5_5 = MpCommon
      L5_5 = L5_5.GetPersistContextCount
      L6_6 = L2_2
      L5_5 = L5_5(L6_6)
      if L5_5 == 0 then
        L5_5 = {}
        L6_6 = table
        L6_6 = L6_6.insert
        L6_6(L5_5, "ContextualDropEncryptedArchiveByEmail")
        L6_6 = MpCommon
        L6_6 = L6_6.SetPersistContext
        L6_6(L2_2, L5_5, 0)
      else
        L5_5 = MpCommon
        L5_5 = L5_5.QueryPersistContext
        L6_6 = L2_2
        L5_5 = L5_5(L6_6, "ContextualDropEncryptedArchiveByEmail")
        if not L5_5 then
          L5_5 = MpCommon
          L5_5 = L5_5.AppendPersistContext
          L6_6 = L2_2
          L5_5(L6_6, "ContextualDropEncryptedArchiveByEmail", 300)
        end
      end
      L5_5 = mp
      L5_5 = L5_5.getfilesize
      L5_5 = L5_5()
      if L5_5 > 10485760 then
        L5_5 = mp
        L5_5 = L5_5.CLEAN
        return L5_5
      end
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L6_6 = "//Lua:ContextualDropExecutableByEmailClient.B"
      L5_5(L6_6)
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L6_6 = "MpForceScanArchives"
      L5_5(L6_6)
    else
      L5_5 = IsSuspiciousFileExt
      L6_6 = L4_4
      L5_5 = L5_5(L6_6)
      if L5_5 then
        if L4_4 == "dll" or L4_4 == "js" or L4_4 == "exe" then
          L5_5 = string
          L5_5 = L5_5.lower
          L6_6 = mp
          L6_6 = L6_6.ContextualExpandEnvironmentVariables
          L6_6 = L6_6("%userprofile%")
          L5_5 = L5_5(L6_6, L6_6("%userprofile%"))
          L6_6 = nil
          if L5_5 ~= nil and L5_5 ~= "" then
            L6_6 = string.match(L5_5, "(%a:.*\\)[^\\]+$")
          end
          if string.find(L2_2, "appdata\\local\\assembly\\te?mp\\[^\\]+\\.+%.dll") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\assembly\\te?mp\\[^\\]+\\.+%.exe") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\microsoft\\office\\[%d%.]+\\wef\\.+%.js") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\microsoft\\office\\[%d%.]+\\smartlookupcache\\.+%.js") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\roaming\\imanage\\work\\plug_ins\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\roaming\\imanage\\work\\dll\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\roaming\\imanage\\work\\chromium\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\imanage\\work\\plug_ins\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\imanage\\work\\dll\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\imanage\\work\\chromium\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\microsoft\\windows\\inetcache\\ie\\[^\\]+\\.+%.js") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\microsoft\\windows\\appcache\\%w+\\%d+\\.+%.js") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, "appdata\\local\\packages\\microsoft%.outlookforwindows_[^\\]+\\ac\\inetcache\\[^\\]+\\.+%.js") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, ".:\\windows\\microsoft%.net\\assembly\\gac_msil\\[^\\]+\\[^\\]+\\.+%.dll") ~= nil then
            return mp.CLEAN
          end
          if string.find(L2_2, ":\\program files (x86)\\zoom\\zoom outlook plugin\\x64\\zoomoutlookplugin64.dll", 1, true) ~= nil then
            return mp.CLEAN
          end
          if L6_6 ~= nil and L6_6 ~= "" then
            if string.find(L2_2, L6_6 .. "[^\\]+\\inetcache\\ie\\[^\\]+\\.+%.js") ~= nil then
              return mp.CLEAN
            end
            if string.find(L2_2, L6_6 .. "[^\\]+\\appdata\\local\\temp\\%d+\\intresource64%.dll") ~= nil then
              return mp.CLEAN
            end
            if string.find(L2_2, L6_6 .. "[^\\]+\\appdata\\local\\temp\\deployment\\[^\\]+\\[^\\]+\\caseninja%.dll") ~= nil then
              return mp.CLEAN
            end
            if string.find(L2_2, L6_6 .. "[^\\]+\\appdata\\local\\temp\\deployment\\[^\\]+\\[^\\]+\\federatedauthentication%.dll") ~= nil then
              return mp.CLEAN
            end
            if string.find(L2_2, L6_6 .. "[^\\]+\\appdata\\local\\temp\\deployment\\[^\\]+\\[^\\]+\\sharedresources%.dll") ~= nil then
              return mp.CLEAN
            end
            if string.find(L2_2, L6_6 .. "[^\\]+\\appdata\\local\\temp\\deployment\\[^\\]+\\[^\\]+\\mssolvehelper%-databroker%.exe") ~= nil then
              return mp.CLEAN
            end
          end
        end
        L5_5 = mp
        L5_5 = L5_5.set_mpattribute
        L6_6 = "MpDisableCaching"
        L5_5(L6_6)
        L5_5 = MpCommon
        L5_5 = L5_5.GetPersistContextCount
        L6_6 = L2_2
        L5_5 = L5_5(L6_6)
        if L5_5 == 0 then
          L5_5 = {}
          L6_6 = table
          L6_6 = L6_6.insert
          L6_6(L5_5, L1_1)
          L6_6 = MpCommon
          L6_6 = L6_6.SetPersistContext
          L6_6(L2_2, L5_5, 0)
        else
          L5_5 = MpCommon
          L5_5 = L5_5.QueryPersistContext
          L6_6 = L2_2
          L5_5 = L5_5(L6_6, L1_1)
          if not L5_5 then
            L5_5 = MpCommon
            L5_5 = L5_5.AppendPersistContext
            L6_6 = L2_2
            L5_5(L6_6, L1_1, 0)
          end
        end
        L5_5 = mp
        L5_5 = L5_5.SetHipsRule
        L6_6 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
        L5_5(L6_6)
        L5_5 = mp
        L5_5 = L5_5.BLOCKACCESS
        return L5_5
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
