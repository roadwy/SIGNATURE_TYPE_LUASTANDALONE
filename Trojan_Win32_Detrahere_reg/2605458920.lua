local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "Regkeyvalue" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L4_4 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "hklm\\system\\currentcontrolset\\control\\network"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 ~= nil then
  L1_1, L2_2, L3_3 = nil, nil, nil
  L4_4 = sysio
  L4_4 = L4_4.RegOpenKey
  L4_4 = L4_4("HKLM\\SYSTEM\\CurrentControlSet\\Control\\Network")
  if L4_4 then
    L2_2 = sysio.GetRegValueAsString(L4_4, "atimode")
    L1_1 = sysio.GetRegValueAsString(L4_4, "set_pt")
    L3_3 = sysio.GetRegValueAsString(L4_4, "set_hp")
  end
  if L2_2 ~= nil and L2_2:len() > 16 or L1_1 ~= nil and L1_1:len() > 16 or L3_3 ~= nil and L3_3:len() > 16 then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
