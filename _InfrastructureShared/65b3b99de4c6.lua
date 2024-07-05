local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "//b"
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "//e:jscript"
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.GetExecutablesFromCommandLine
      L2_2 = L0_0
      L1_1 = L1_1(L2_2)
      L2_2, L3_3 = nil, nil
      for L7_7, L8_8 in L4_4(L5_5) do
        L2_2 = mp.ContextualExpandEnvironmentVariables("%temp%\\") .. L8_8
        L3_3 = mp.ContextualExpandEnvironmentVariables("%temp%\\low\\") .. L8_8
        if sysio.IsFileExists(L8_8) then
          bm.add_related_file(L8_8)
          mp.ReportLowfi(L8_8, 3307547556)
        elseif sysio.IsFileExists(L2_2) then
          bm.add_related_file(L2_2)
          mp.ReportLowfi(L2_2, 3307547556)
        elseif sysio.IsFileExists(L3_3) then
          bm.add_related_file(L3_3)
          mp.ReportLowfi(L3_3, 3307547556)
        end
      end
      return L4_4
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
