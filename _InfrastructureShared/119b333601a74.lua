local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.ContextualExpandEnvironmentVariables
  L1_1 = L1_1(this_sigattrlog[1].utf8p2)
  L0_0 = L0_0(L1_1, L1_1(this_sigattrlog[1].utf8p2))
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "wscript[^%s]+%s+\"(.-%.vbs)")
  if L1_1 == nil then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L1_1) then
    mp.ReportLowfi(L1_1, 3439210845)
    bm.add_related_file(L1_1)
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.ContextualExpandEnvironmentVariables
  L1_1 = L1_1(this_sigattrlog[3].utf8p2)
  L0_0 = L0_0(L1_1, L1_1(this_sigattrlog[3].utf8p2))
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "powershell.-%-file%s+(.-%.ps1)")
  if L1_1 == nil then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L1_1) then
    mp.ReportLowfi(L1_1, 1442275559)
    bm.add_related_file(L1_1)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
