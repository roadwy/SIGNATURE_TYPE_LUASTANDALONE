local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L4_4 = -9
  L4_4 = L2_2(L3_3, L4_4)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3, L4_4))
  if L1_1 ~= "\\w3wp.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L1_1 = L2_2.utf8p1
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p1
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L1_1 = L2_2.utf8p1
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L1_1 = L2_2.utf8p1
      end
    end
  end
end
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L4_4 = -4
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = "|.asp|aspx|ashx|asmx|"
  L4_4 = string
  L4_4 = L4_4.find
  L4_4 = L4_4(L3_3, L2_2, 1, true)
  if L4_4 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
L3_3 = L2_2.command_line
L4_4 = string
L4_4 = L4_4.find
L4_4 = L4_4(L3_3, "-ap \"MSExchange", 1, true)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = sysio
L4_4 = L4_4.IsFileExists
L4_4 = L4_4(L1_1)
if L4_4 then
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L1_1, "(.*\\)[^\\]+$")
  if L4_4 then
    bm.trigger_sig("TriggerShellPath", L4_4)
  end
  mp.ReportLowfi(L1_1, 560784057)
  bm.add_related_file(L1_1)
  bm.add_threat_file(L1_1)
end
L4_4 = mp
L4_4 = L4_4.INFECTED
return L4_4
