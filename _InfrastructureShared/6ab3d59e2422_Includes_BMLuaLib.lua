local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
L1_1 = L0_0.image_path
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.ContextualExpandEnvironmentVariables
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = MpCommon
  L2_2 = L2_2.ExpandEnvironmentVariables
  L3_3 = "%windir%\\system32\\cmd.exe"
  L2_2 = L2_2(L3_3)
  if L1_1 == L2_2 then
    L3_3 = mp
    L3_3 = L3_3.GetParentProcInfo
    L4_4 = L0_0.ppid
    L3_3 = L3_3(L4_4)
    L4_4 = L3_3.image_path
    if L4_4 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.ContextualExpandEnvironmentVariables
      L5_5 = L3_3.image_path
      L4_4 = L4_4(L5_5)
      L5_5 = MpCommon
      L5_5 = L5_5.ExpandEnvironmentVariables
      L6_6 = "%windir%\\system32\\gpscript.exe"
      L5_5 = L5_5(L6_6)
      if L4_4 == L5_5 then
        L6_6 = mp
        L6_6 = L6_6.GetProcessCommandLine
        L7_7 = L0_0.ppid
        L6_6 = L6_6(L7_7)
        if L6_6 ~= nil then
          L7_7 = L6_6.match
          L7_7 = L7_7(L6_6, "\"[^\"]+\"")
          L7_7 = L7_7.gsub
          L7_7 = L7_7(L7_7, "\"", "")
          if L7_7 then
            reportSessionInformation()
            bm.add_related_file(L7_7)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
