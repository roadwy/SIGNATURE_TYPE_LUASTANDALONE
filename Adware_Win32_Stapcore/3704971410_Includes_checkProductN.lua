local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = L0_0.CompanyName
L2_2 = L0_0.ProductName
L3_3 = L0_0.ProductVersion
if L1_1 then
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(L1_1)
  L1_1 = L4_4
else
  L1_1 = ""
end
if L2_2 then
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(L2_2)
  L2_2 = L4_4
else
  L2_2 = ""
end
if L3_3 then
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(L3_3)
  L3_3 = L4_4
else
  L3_3 = ""
end
if L1_1 ~= "fast corporation ltd" then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
if L2_2 ~= "pc app store" then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = L3_3.match
L4_4 = L4_4(L3_3, "([0-9.]+)")
if L4_4 == nil then
  return mp.INFECTED
end
if compareProductVersion(L4_4, "1.0.0.1091") == -1 then
  return mp.INFECTED
end
return mp.CLEAN
