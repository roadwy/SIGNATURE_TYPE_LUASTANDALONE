local L0_0, L1_1, L2_2, L3_3, L4_4
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
L3_3 = "MachineDomain"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\WebClient"
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.GetRegValueAsString
L4_4 = L2_2
L3_3 = L3_3(L4_4, "Start")
if L3_3 == nil or L3_3 >= 4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(this_sigattrlog[1].utf8p2)
    if sysio.IsFileExists(L4_4) then
      bm.add_related_file(L4_4)
    end
  end
end
L4_4 = mp
L4_4 = L4_4.INFECTED
return L4_4
