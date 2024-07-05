local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = string
L0_0 = L0_0.lower
L1_1 = nri
L1_1 = L1_1.GetURI
L6_6 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  ".dll",
  ".bat",
  ".xlsm",
  ".bmp"
}
L5_5 = ".mkv"
L6_6 = ".exe"
for L5_5, L6_6 in L2_2(L3_3) do
  if StringEndsWith(L0_0, L6_6) then
    reportHeaders({"Host", "User-Agent"})
    return mp.INFECTED
  end
end
return L2_2
