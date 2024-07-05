local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p2
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p2
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L0_0 = L1_1.utf8p2
      end
    end
  end
end
L1_1 = contains
L2_2 = L0_0
L3_3 = {
  "AlexaNSISPlugin",
  "Windows Photo Viewer\\PhotoViewer.dll",
  "cryptextopencer"
}
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = extractDllForRegproc
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.ContextualExpandEnvironmentVariables
L3_3 = L2_2(L3_3, L1_1)
if L2_2 and L3_3 then
  bm.add_related_file(L3_3)
  triggerMemoryScanOnProcessTree(true, true, "SMS_M", 100, "Behavior:Win32/DllInject.SD")
end
return mp.INFECTED
