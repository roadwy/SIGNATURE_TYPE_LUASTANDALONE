local L0_0, L1_1, L2_2
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "PACKED_WITH:[CMDEmbedded]"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L1_1 < 256 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L2_2 = table
L2_2 = L2_2.insert
L2_2(L1_1, L0_0)
L2_2 = MpCommon
L2_2 = L2_2.SetPersistContextNoPath
L2_2("lnkarg_sb", L1_1, 10)
L2_2 = {
  "odbcconf",
  "rundll32",
  "regsvr32",
  "powershell",
  "calc",
  "wscript",
  "cscript",
  "mshta",
  ".cmd",
  ".bat",
  "..\\.."
}
if not contains(L0_0, L2_2) then
  return mp.CLEAN
end
return mp.INFECTED
