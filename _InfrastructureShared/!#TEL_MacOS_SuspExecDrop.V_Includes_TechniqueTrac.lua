local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FNAME
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_PATH
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L5_5 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3, L4_4))
if L2_2 == nil or L2_2 == "" or L1_1 == nil or L1_1 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = "/bin/"
L3_3 = L3_3(L4_4, L5_5, 1, true)
if L3_3 ~= 1 then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L1_1
  L5_5 = "/system/"
  L3_3 = L3_3(L4_4, L5_5, 1, true)
  if L3_3 ~= 1 then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L1_1
    L5_5 = "/sbin/"
    L3_3 = L3_3(L4_4, L5_5, 1, true)
    if L3_3 ~= 1 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L1_1
      L5_5 = "/library/apple/"
      L3_3 = L3_3(L4_4, L5_5, 1, true)
      if L3_3 ~= 1 then
        L3_3 = string
        L3_3 = L3_3.find
        L4_4 = L1_1
        L5_5 = "/private/var/db/com.apple.xpc.roleaccountd.staging"
        L3_3 = L3_3(L4_4, L5_5, 1, true)
        if L3_3 ~= 1 then
          L3_3 = string
          L3_3 = L3_3.find
          L4_4 = L1_1
          L5_5 = "/usr/"
          L3_3 = L3_3(L4_4, L5_5, 1, true)
          if L3_3 == 1 then
            L3_3 = string
            L3_3 = L3_3.find
            L4_4 = L1_1
            L5_5 = "/usr/local/"
            L3_3 = L3_3(L4_4, L5_5, 1, true)
            L3_3 = not L3_3
          elseif L3_3 ~= 1 then
            L3_3 = string
            L3_3 = L3_3.find
            L4_4 = L1_1
            L5_5 = "/applications/microsoft defender.app/"
            L3_3 = L3_3(L4_4, L5_5, 1, true)
          end
        end
      end
    end
  end
elseif L3_3 == 1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESS_PPID
L3_3 = L3_3(L4_4)
L4_4 = L1_1
L5_5 = "/"
L4_4 = L4_4 .. L5_5 .. L2_2
L5_5 = {
  "launchd",
  "launchctl",
  "bash",
  "zsh",
  "wget",
  "curl",
  "xattr",
  "crontab",
  "configd",
  "syslog",
  "xpcproxy",
  "discord",
  "whoami",
  "security",
  "swift",
  "rsync",
  "hdiutil",
  "xpcservice"
}
for _FORV_9_, _FORV_10_ in pairs(L5_5) do
  if L2_2 == _FORV_10_ then
    mp.set_mpattribute("BM_MacMasquerading")
    if L3_3 then
      MpCommon.BmTriggerSig(L3_3, "BM_MacMasquerading", L4_4)
      TrackPidAndTechnique(L3_3, "T1036.005", "DefenseEvasion_Masquerading")
    end
    return mp.INFECTED
  end
  if L2_2:gsub("%W", "") == _FORV_10_ then
    mp.set_mpattribute("BM_MacMasquerading")
    if L3_3 then
      MpCommon.BmTriggerSig(L3_3, "BM_MacMasquerading", L4_4)
      TrackPidAndTechnique(L3_3, "T1036.005", "DefenseEvasion_Masquerading")
    end
    return mp.INFECTED
  end
end
return mp.CLEAN
