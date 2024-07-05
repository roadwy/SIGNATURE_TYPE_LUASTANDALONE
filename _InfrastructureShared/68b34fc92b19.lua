local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "%.exe%s(.+%.exe)%s"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.len
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    if L3_3 > 3 then
      L0_0 = L2_2
    end
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = L1_1
    L4_4 = "%.exe%s\".-([^\\]-[^\\%.]+)\"%s"
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= nil then
      L3_3 = string
      L3_3 = L3_3.len
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      if L3_3 > 3 then
        L0_0 = L2_2
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if not (L1_1 < 4) then
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L3_3 = -4
    L1_1 = L1_1(L2_2, L3_3)
  end
elseif L1_1 ~= ".exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\"
L2_2 = L0_0
L1_1 = L1_1 .. L2_2
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = sysio
  L3_3 = L3_3.GetRegValueAsString
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 ~= nil then
    L4_4 = string
    L4_4 = L4_4.len
    L4_4 = L4_4(L5_5)
    if L4_4 >= 1 then
      L4_4 = sysio
      L4_4 = L4_4.IsFileExists
      L4_4 = L4_4(L5_5)
      if L4_4 then
        L4_4 = mp
        L4_4 = L4_4.ReportLowfi
        L4_4(L5_5, L6_6)
        L4_4 = bm
        L4_4 = L4_4.add_related_file
        L4_4(L5_5)
      else
        L4_4 = mp
        L4_4 = L4_4.GetExecutablesFromCommandLine
        L4_4 = L4_4(L5_5)
        for L8_8, L9_9 in L5_5(L6_6) do
          if L9_9 ~= nil and string.len(L9_9) > 3 and sysio.IsFileExists(L9_9) then
            mp.ReportLowfi(L9_9, 1806419140)
            bm.add_related_file(L9_9)
          end
        end
      end
      L4_4 = mp
      L4_4 = L4_4.INFECTED
      return L4_4
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
