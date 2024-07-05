local L0_0, L1_1, L2_2
L0_0 = false
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = sysio
  L1_1 = L1_1.RegOpenKey
  L2_2 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\sethc.exe"
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    L2_2 = sysio
    L2_2 = L2_2.GetRegValueAsString
    L2_2 = L2_2(L1_1, "Debugger")
    if L2_2 ~= nil and string.len(L2_2) > 3 and sysio.IsFileExists(L2_2) then
      mp.ReportLowfi(L2_2, 203654752)
      L0_0 = true
    end
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = sysio
    L1_1 = L1_1.RegOpenKey
    L2_2 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\osk.exe"
    L1_1 = L1_1(L2_2)
    if L1_1 ~= nil then
      L2_2 = sysio
      L2_2 = L2_2.GetRegValueAsString
      L2_2 = L2_2(L1_1, "Debugger")
      if L2_2 ~= nil and string.len(L2_2) > 3 and sysio.IsFileExists(L2_2) then
        mp.ReportLowfi(L2_2, 2797521046)
        L0_0 = true
      end
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = sysio
      L1_1 = L1_1.RegOpenKey
      L2_2 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\magnify.exe"
      L1_1 = L1_1(L2_2)
      if L1_1 ~= nil then
        L2_2 = sysio
        L2_2 = L2_2.GetRegValueAsString
        L2_2 = L2_2(L1_1, "Debugger")
        if L2_2 ~= nil and string.len(L2_2) > 3 and sysio.IsFileExists(L2_2) then
          mp.ReportLowfi(L2_2, 3633633013)
          L0_0 = true
        end
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = sysio
        L1_1 = L1_1.RegOpenKey
        L2_2 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\utilman.exe"
        L1_1 = L1_1(L2_2)
        if L1_1 ~= nil then
          L2_2 = sysio
          L2_2 = L2_2.GetRegValueAsString
          L2_2 = L2_2(L1_1, "Debugger")
          if L2_2 ~= nil and string.len(L2_2) > 3 and sysio.IsFileExists(L2_2) then
            mp.ReportLowfi(L2_2, 18635330)
            L0_0 = true
          end
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = sysio
          L1_1 = L1_1.RegOpenKey
          L2_2 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\narrator.exe"
          L1_1 = L1_1(L2_2)
          if L1_1 ~= nil then
            L2_2 = sysio
            L2_2 = L2_2.GetRegValueAsString
            L2_2 = L2_2(L1_1, "Debugger")
            if L2_2 ~= nil and string.len(L2_2) > 3 and sysio.IsFileExists(L2_2) then
              mp.ReportLowfi(L2_2, 3440281147)
              L0_0 = true
            end
          end
        end
      end
    end
  end
end
if L0_0 == true then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
