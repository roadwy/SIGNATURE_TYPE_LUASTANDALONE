local L0_0, L1_1, L2_2
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Group Policy\\History"
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.GetRegValueAsString
L2_2 = L0_0
L1_1 = L1_1(L2_2, "MachineDomain")
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[1].utf8p2)
    if sysio.IsFileExists(L2_2) then
      bm.add_related_file(L2_2)
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
