local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = contains
L2_2 = L0_0
L3_3 = {
  L4_4,
  "regsvr32.exe"
}
L4_4 = "rundll32.exe"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L3_3 = "targetprocessppid:(%d+):(%d+)"
L2_2 = L1_1(L2_2, L3_3)
if not L1_1 or not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "pid:"
L4_4 = L1_1
L3_3 = L3_3 .. L4_4 .. ",ProcessStart:" .. L2_2
L4_4 = sysio
L4_4 = L4_4.GetFileNameFromProcess
L4_4 = L4_4(L3_3)
if L4_4 and contains(L4_4, "\\windows\\syswow64") then
  if contains(L4_4, {
    "svchost.exe"
  }) then
    return mp.CLEAN
  end
  bm.add_related_string("Injected_imagepath", L4_4, bm.RelatedStringBMReport)
  triggerMemoryScanOnProcessTree(true, true, "SMS_M", 100, "Behavior:Win32/DllInject.SE")
  return mp.INFECTED
end
return mp.CLEAN
