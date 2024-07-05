local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L4_4 = "([^\\]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= "w3wp.exe" and L2_2 ~= "httpd.exe" then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L5_5 = "tomcat"
    L6_6 = 1
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.GetScannedPPID
    L3_3 = L3_3()
    if L3_3 == "" or L3_3 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = mp
    L4_4 = L4_4.GetProcessCommandLine
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    if not L4_4 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = "cd /d ([^\\s]+&[^\\s])"
    L6_6 = MpCommon
    L6_6 = L6_6.StringRegExpSearch
    L7_7 = L5_5
    L8_8 = L4_4
    L7_7 = L6_6(L7_7, L8_8)
    if L6_6 == true then
      L8_8 = L0_0.ppid
      if L8_8 ~= "" and L8_8 ~= nil then
        TrackPidAndTechnique(L8_8, "T1505.003", "webshell_parent", 604800)
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
