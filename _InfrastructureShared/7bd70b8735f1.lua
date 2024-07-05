local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.len
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 < 1024 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "(JABlAHgAdABQAGEA[a-zA-Z0-9%+/]+=-)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.sub
L4_4 = L2_2
L5_5 = 1
L6_6 = 512
L3_3 = L3_3(L4_4, L5_5, L6_6)
L2_2 = L3_3
L3_3 = MpCommon
L3_3 = L3_3.Base64Decode
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.gsub
L5_5 = L3_3
L6_6 = "%z"
L7_7 = ""
L4_4 = L4_4(L5_5, L6_6, L7_7)
L3_3 = L4_4
L4_4 = string
L4_4 = L4_4.lower
L5_5 = string
L5_5 = L5_5.gsub
L6_6 = L3_3
L7_7 = " "
L8_8 = ""
L8_8 = L5_5(L6_6, L7_7, L8_8)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L5_5(L6_6, L7_7, L8_8))
L3_3 = L4_4
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L6_6 = "confpath"
L7_7 = 1
L8_8 = true
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
if L4_4 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L6_6 = "archivename"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L3_3
    L6_6 = "taskname"
    L7_7 = 1
    L8_8 = true
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
    if L4_4 then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L3_3
      L6_6 = "domain"
      L7_7 = 1
      L8_8 = true
      L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
      if L4_4 then
        L4_4 = string
        L4_4 = L4_4.match
        L5_5 = L3_3
        L6_6 = "%$taskname=\"(.-)\""
        L4_4 = L4_4(L5_5, L6_6)
        if L4_4 ~= nil then
          L5_5 = mp
          L5_5 = L5_5.GetParentProcInfo
          L5_5 = L5_5()
          if L5_5 ~= nil then
            L6_6 = string
            L6_6 = L6_6.lower
            L7_7 = L5_5.image_path
            L6_6 = L6_6(L7_7)
            L8_8 = L6_6
            L7_7 = L6_6.match
            L7_7 = L7_7(L8_8, "([^\\]+)$")
            L8_8 = "svchost.exe|taskeng.exe|taskhostw.exe"
            if L7_7 ~= nil and string.find(L8_8, L7_7) then
              mp.TriggerScanResource("taskscheduler", "C:\\Windows\\System32\\Tasks\\" .. L4_4)
            end
          end
        end
        L5_5 = mp
        L5_5 = L5_5.INFECTED
        return L5_5
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
