local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = 60
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = "/usr/bin/gpg"
L4_4 = L1_1
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 ~= 1 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = "/usr/bin/gpg2"
  L4_4 = L1_1
  L5_5 = 1
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 ~= 1 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.ppid
  if L3_3 ~= nil then
    L3_3 = L2_2.command_line
    if L3_3 ~= nil then
      L3_3 = L2_2.command_line
    end
  end
elseif L3_3 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.command_line
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L6_6 = "/usr/bin/apt-key"
L7_7 = 1
L4_4 = L4_4(L5_5, L6_6, L7_7, true)
if not L4_4 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L6_6 = "zypper -qn refresh"
  L7_7 = 1
  L4_4 = L4_4(L5_5, L6_6, L7_7, true)
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L3_3
    L6_6 = "--ignore-time-conflict"
    L7_7 = 1
    L4_4 = L4_4(L5_5, L6_6, L7_7, true)
    if not L4_4 then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L3_3
      L6_6 = "--no-sk-comments"
      L7_7 = 1
      L4_4 = L4_4(L5_5, L6_6, L7_7, true)
      if not L4_4 then
        L4_4 = string
        L4_4 = L4_4.find
        L5_5 = L3_3
        L6_6 = "--enable-progress-filter"
        L7_7 = 1
        L4_4 = L4_4(L5_5, L6_6, L7_7, true)
        if not L4_4 then
          L4_4 = string
          L4_4 = L4_4.find
          L5_5 = L3_3
          L6_6 = "--enable-special-filenames"
          L7_7 = 1
          L4_4 = L4_4(L5_5, L6_6, L7_7, true)
          if not L4_4 then
            L4_4 = string
            L4_4 = L4_4.find
            L5_5 = L3_3
            L6_6 = "--check-trustdb"
            L7_7 = 1
            L4_4 = L4_4(L5_5, L6_6, L7_7, true)
            if not L4_4 then
              L4_4 = string
              L4_4 = L4_4.find
              L5_5 = L3_3
              L6_6 = "--version"
              L7_7 = 1
              L4_4 = L4_4(L5_5, L6_6, L7_7, true)
              if not L4_4 then
                L4_4 = string
                L4_4 = L4_4.find
                L5_5 = L3_3
                L6_6 = "--fingerprint"
                L7_7 = 1
                L4_4 = L4_4(L5_5, L6_6, L7_7, true)
              end
            end
          end
        end
      end
    end
  end
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {L5_5, L6_6}
L5_5 = {L6_6, L7_7}
L6_6 = ""
L7_7 = "/usr/bin/apt-key"
L6_6 = {
  L7_7,
  "zypper -qn refresh"
}
L7_7 = ""
L5_5 = checkParentCmdline
L6_6 = L2_2.ppid
L7_7 = L4_4
L5_5 = L5_5(L6_6, L7_7, 3)
if L5_5 == true then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.GetParentProcInfo
L5_5 = L5_5()
if L5_5 ~= nil then
  L6_6 = L5_5.ppid
elseif L6_6 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L5_5.ppid
L7_7 = ":"
L6_6 = L6_6 .. L7_7 .. L1_1 .. ":File_Changed"
L7_7 = this_sigattrlog
L7_7 = L7_7[4]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = this_sigattrlog
  L7_7 = L7_7[4]
  L7_7 = L7_7.utf8p1
  if L7_7 ~= nil then
    L7_7 = this_sigattrlog
    L7_7 = L7_7[4]
    L7_7 = L7_7.utf8p1
    MpCommon.SetPersistContextNoPath(L6_6, {L7_7}, L0_0)
    if analyzeRansomwarePattern5(L6_6, "NEW_FILE_CREATED") == mp.INFECTED then
      TrackPidAndTechniqueBM("BM", "T1486", "Impact_Encryption")
      RemediateProcessTreeForLinux()
      return mp.INFECTED
    end
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
