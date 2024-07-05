local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "/bin/", 1, true)
if L2_2 ~= 1 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "/system/", 1, true)
  if L2_2 ~= 1 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, "/sbin/", 1, true)
    if L2_2 ~= 1 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, "/library/apple/", 1, true)
      if L2_2 ~= 1 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, "/private/var/db/com.apple.xpc.roleaccountd.staging", 1, true)
        if L2_2 ~= 1 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L1_1
          L2_2 = L2_2(L3_3, "/usr/", 1, true)
          if L2_2 == 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L1_1
            L2_2 = L2_2(L3_3, "/usr/local/", 1, true)
            L2_2 = not L2_2
          elseif L2_2 ~= 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L1_1
            L2_2 = L2_2(L3_3, "/applications/microsoft defender.app/", 1, true)
          end
        end
      end
    end
  end
elseif L2_2 == 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
L2_2 = L2_2(L3_3)
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L1_1, "/contents/macos/", 1, true)
if L3_3 then
  L3_3 = string
  L3_3 = L3_3.match
  L3_3 = L3_3(L1_1, "(.-)/contents")
  if string.find(L3_3, ".app", -4, true) then
    mp.set_mpattribute("BM_ScriptPartOfApp")
    if L2_2 then
      MpCommon.BmTriggerSig(L2_2, "BM_ScriptPartOfApp", L1_1)
    end
    return mp.CLEAN
  else
    mp.set_mpattribute("BM_ScriptPartOfBundleWithoutAppExt")
    if L2_2 then
      MpCommon.BmTriggerSig(L2_2, "BM_ScriptPartOfApp", L1_1)
      TrackPidAndTechnique(L2_2, "T1036.005", "DefenseEvasion_Masquerading")
    end
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
