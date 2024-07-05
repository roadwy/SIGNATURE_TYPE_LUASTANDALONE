local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetLnkInfo
L0_0 = L0_0()
L1_1 = L0_0.Arguments
L2_2 = isnull
L2_2 = L2_2(L1_1)
if L2_2 then
  L1_1 = L0_0.RelativePath
end
L2_2 = L1_1.lower
L2_2 = L2_2(L1_1)
L1_1 = L2_2
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
if contains(L1_1, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
