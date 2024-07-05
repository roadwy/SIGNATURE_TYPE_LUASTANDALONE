local L0_0, L1_1, L2_2, L3_3, L4_4
L3_3 = mp
L3_3 = L3_3.set_mpattribute
L4_4 = "WPADExploitAttempt.seen"
L3_3(L4_4)
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L0_0 = L3_3.timestamp
end
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L0_0 = L3_3.timestamp
end
L3_3 = this_sigattrlog
L3_3 = L3_3[4]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[4]
  L1_1 = L3_3.timestamp
end
L3_3 = this_sigattrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L1_1 = L3_3.timestamp
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L2_2 = L3_3.utf8p1
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = string
  L4_4 = L4_4.sub
  L4_4 = L4_4(this_sigattrlog[5].utf8p1, -12)
  L3_3 = L3_3(L4_4, L4_4(this_sigattrlog[5].utf8p1, -12))
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(this_sigattrlog[5].utf8p2)
  if L3_3 == nil or string.find(L3_3, "rundll32.exe", 1, true) and (string.find(L4_4, "davclnt.dll", 1, true) or string.find(L4_4, "winethc.dll", 1, true)) then
    return mp.CLEAN
  end
end
if L0_0 <= L1_1 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[6]
  L3_3 = L3_3.utf8p1
  L4_4 = mp
  L4_4 = L4_4.ContextualExpandEnvironmentVariables
  L4_4 = L4_4(L3_3)
  L3_3 = L4_4
  L4_4 = sysio
  L4_4 = L4_4.IsFileExists
  L4_4 = L4_4(L3_3)
  if L4_4 then
    L4_4 = bm
    L4_4 = L4_4.add_related_file
    L4_4(L3_3)
    L4_4 = mp
    L4_4 = L4_4.ReportLowfi
    L4_4(L3_3, 1402450356)
  end
  L4_4 = this_sigattrlog
  L4_4 = L4_4[5]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = sysio
    L4_4 = L4_4.IsFileExists
    L4_4 = L4_4(L2_2)
    if L4_4 then
      L4_4 = bm
      L4_4 = L4_4.add_related_file
      L4_4(L2_2)
    end
  end
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
