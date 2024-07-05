local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L1_1 = L1_1.lower
    L1_1 = L1_1(L1_1)
    L0_0 = L1_1
  end
end
L1_1 = {
  "winword.exe",
  "excel.exe",
  "powerpnt.exe",
  "mspub.exe"
}
if not IsProcNameInParentProcessTree("BM", L1_1) then
  return mp.CLEAN
end
if contains(L0_0, "process.*call.*create", false) and contains(L0_0, {
  " powershell",
  " mshta javascript:",
  " regsvr32",
  " rundll32",
  " mshta",
  " certutil"
}) then
  bm.add_related_string("proc_cmdline", L0_0, bm.RelatedStringBMReport)
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
