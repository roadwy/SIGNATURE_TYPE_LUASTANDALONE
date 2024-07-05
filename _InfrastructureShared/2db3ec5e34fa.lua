local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.lower
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.utf8p1
L1_1 = L1_1(L2_2)
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8
}
L3_3 = "/google chrome$"
L7_7 = "/chromedriver$"
L8_8 = "/vivaldi$"
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8
}
L7_7 = "^/users/.+/library/application support/bravesoftware/brave%-browser/default/preferences$"
L8_8 = "^/users/.+/library/application support/google/chrome/default/preferences$"
for L7_7, L8_8 in L4_4(L5_5) do
  if string.find(L1_1, L8_8) then
    return mp.CLEAN
  end
end
for L7_7, L8_8 in L4_4(L5_5) do
  if string.find(L0_0, L8_8) then
    return mp.INFECTED
  end
end
return L4_4
