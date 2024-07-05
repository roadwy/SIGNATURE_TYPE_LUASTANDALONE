local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = "|.js|jse|vbs|vbe|wsf|wsh"
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p2
  end
end
if L0_0 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
  L3_3 = #L2_2
  if L3_3 > 1 then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = L2_2[2]
    L3_3 = L3_3(L4_4)
    L4_4 = string
    L4_4 = L4_4.sub
    L4_4 = L4_4(L3_3, -3)
    if string.find(L1_1, L4_4, 1, true) then
      L3_3 = mp.ContextualExpandEnvironmentVariables(L3_3)
      if sysio.IsFileExists(L3_3) then
        bm.add_related_file(L3_3)
        mp.ReportLowfi(L3_3, 2419017217)
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
