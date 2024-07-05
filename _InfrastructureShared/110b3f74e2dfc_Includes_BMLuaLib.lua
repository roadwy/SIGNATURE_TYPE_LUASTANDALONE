local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = "|.xls|.doc|.ppt|.pps|docx|pptx|ppsx|xlsx|.rtf|"
  L2_2 = bm_AddRelatedFileFromCommandLine
  L3_3 = L0_0
  L2_2(L3_3, L1_1)
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.utf8p1
    if L2_2 ~= nil then
      L2_2 = mp
      L2_2 = L2_2.ReportLowfi
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.utf8p1
      L2_2(L3_3, 2288844567)
    end
  end
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.utf8p2
      L3_3 = "|.lnk|"
      bm_AddRelatedFileFromCommandLine(L2_2, L3_3)
    end
  end
  L2_2 = bm
  L2_2 = L2_2.trigger_sig_self_propagate
  L3_3 = "SuspChildProcessLaunch"
  L2_2(L3_3, "Behavior:Win32/StarStickle.A!dha")
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
