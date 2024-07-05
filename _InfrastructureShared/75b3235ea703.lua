local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\\program files"
L2_2 = L2_2(L3_3, L4_4, 1, true)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L4_4 = "\\ccmcache\\"
  L2_2 = L2_2(L3_3, L4_4, 1, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L4_4 = "\\sysvol\\"
    L2_2 = L2_2(L3_3, L4_4, 1, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L4_4 = "\\netlogon\\"
      L2_2 = L2_2(L3_3, L4_4, 1, true)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = L1_1
        L4_4 = " /exectype"
        L2_2 = L2_2(L3_3, L4_4, 1, true)
        if not L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L1_1
          L4_4 = "/nologo "
          L2_2 = L2_2(L3_3, L4_4, 1, true)
        end
      end
    end
  end
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "(%a:\\[^\"]-%.vbs)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L3_3 = sysio
  L3_3 = L3_3.IsFileExists
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.ReportLowfi
    L4_4 = L2_2
    L3_3(L4_4, 1120308759)
    L3_3 = bm
    L3_3 = L3_3.add_related_file
    L4_4 = L2_2
    L3_3(L4_4)
  end
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1
L3_3 = L3_3(L4_4, "(%a:\\[^\"]-%.js)")
if L3_3 then
  L4_4 = sysio
  L4_4 = L4_4.IsFileExists
  L4_4 = L4_4(L3_3)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.ReportLowfi
    L4_4(L3_3, 1120308759)
    L4_4 = bm
    L4_4 = L4_4.add_related_file
    L4_4(L3_3)
  end
end
L4_4 = string
L4_4 = L4_4.match
L4_4 = L4_4(L1_1, "(%a:\\[^\"]-%.vbe)")
if L4_4 and sysio.IsFileExists(L4_4) then
  mp.ReportLowfi(L4_4, 1120308759)
  bm.add_related_file(L4_4)
end
return mp.INFECTED
