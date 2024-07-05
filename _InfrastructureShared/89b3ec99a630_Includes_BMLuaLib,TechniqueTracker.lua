local L0_0, L1_1, L2_2
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
    L1_1 = L1_1.utf8p2
    L2_2 = L1_1
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = extractDllForRegproc
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = contains
  L2_2 = L2_2(L0_0, ":\\windows\\")
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = contains
  L2_2 = L2_2(L0_0, "\\spool\\drivers\\")
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = checkFileLastWriteTime
  L2_2 = L2_2(L1_1, 3600)
  if L2_2 == false then
    L2_2 = mp
    L2_2 = L2_2.IsKnownFriendlyFile
    L2_2 = L2_2(L1_1, true, false)
    if L2_2 == false then
      L2_2 = bm
      L2_2 = L2_2.add_related_file
      L2_2(L1_1)
      L2_2 = {
        "winword.exe",
        "excel.exe",
        "powerpnt.exe",
        "mspub.exe",
        "wscript.exe",
        "cscript.exe",
        "mshta.exe",
        "powershell.exe",
        "pwsh.exe",
        "wmic.exe",
        "wmiprvse.exe"
      }
      if IsProcNameInParentProcessTree("BM", L2_2, 2) then
        add_parents()
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
