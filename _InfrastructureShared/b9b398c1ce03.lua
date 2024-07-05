local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -4
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = "|.asp|aspx|ashx|asmx|"
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L2_2, L1_1, 1, true)
  if L3_3 then
    L3_3 = sysio
    L3_3 = L3_3.IsFileExists
    L3_3 = L3_3(L0_0)
    if L3_3 then
      L3_3 = string
      L3_3 = L3_3.match
      L3_3 = L3_3(L0_0, "(.*\\)[^\\]+$")
      if L3_3 then
        bm.trigger_sig("TriggerShellPath", L3_3)
      end
      mp.ReportLowfi(L0_0, 3496458548)
      bm.add_related_file(L0_0)
      bm.add_threat_file(L0_0)
    end
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
