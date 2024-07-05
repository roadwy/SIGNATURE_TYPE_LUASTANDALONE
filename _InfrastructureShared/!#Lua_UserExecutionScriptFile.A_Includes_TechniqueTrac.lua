local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = pcall
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_AMSI_APPNAME
  L2_2 = L1_1(L2_2, L3_3)
  L3_3 = {}
  L3_3.vbs = true
  L3_3.ps1 = true
  L3_3[".js"] = true
  L3_3.jse = true
  L3_3.vbe = true
  if L1_1 then
    L4_4 = pcall
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L6_6 = mp
    L6_6 = L6_6.CONTEXT_DATA_AMSI_CONTENTNAME
    L5_5 = L4_4(L5_5, L6_6)
    if L4_4 and L5_5 ~= nil then
      L6_6 = string
      L6_6 = L6_6.lower
      L6_6 = L6_6(L5_5)
      if string.sub(L6_6, -3) ~= nil and L3_3[string.sub(L6_6, -3)] == true then
        if L6_6:find("\\desktop\\", 1, true) and not L6_6:find("\\tanium\\", 1, true) and sysio.IsFileExists(L5_5) then
          TrackPidAndTechnique("AMSI", "T1204", "UserExecution")
          mp.ReportLowfi(L5_5, 2338371394)
          return mp.INFECTED
        elseif L6_6:find("\\downloads\\", 1, true) and not L6_6:find("\\tanium\\", 1, true) and sysio.IsFileExists(L5_5) then
          TrackPidAndTechnique("AMSI", "T1204", "UserExecution")
          mp.ReportLowfi(L5_5, 4234643412)
          return mp.INFECTED
        end
      end
    end
  end
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
