local L0_0, L1_1
L0_0 = {
  L1_1,
  "EMAILCLIENT",
  "WMI"
}
L1_1 = "OFFICE"
L1_1 = {}
L1_1.min = 1
L1_1.max = 5
if QueryProcContext(L0_0, L1_1) then
  return mp.INFECTED
end
return mp.CLEAN
