local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = isTamperProtectionOn
L2_2 = L2_2()
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L0_0 = L2_2.utf8p2
    end
  end
end
L2_2 = contains
L3_3 = L0_0
L4_4 = "%-[eE][ncodemaNCODEMA]*%s+"
L5_5 = false
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 then
  L2_2 = NormalizeCmdline
  L3_3 = "powershell"
  L4_4 = L0_0
  L2_2 = L2_2(L3_3, L4_4)
  L1_1 = L2_2
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L3_3 = L1_1
L4_4 = {
  L5_5,
  "set-mppreference"
}
L5_5 = "add-mppreference"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {L3_3, L4_4}
L3_3 = "detect_host.exe"
L4_4 = "powerclivmware"
L3_3 = contains
L4_4 = L1_1
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L3_3 = L3_3()
L4_4 = GetFileName
L5_5 = L3_3.image_path
L4_4 = L4_4(L5_5)
L5_5 = {"perl.exe", "python.exe"}
if contains(L4_4, L5_5) then
  return mp.CLEAN
end
if contains(L1_1, {
  "add-mppreference",
  "set-mppreference"
}) and contains(L1_1, {"-disable", "-exclusion"}) then
  bm.add_related_string("proc_cmdline", L1_1, bm.RelatedStringBMReport)
  TrackPidAndTechniqueBM("BM", "T1562.001", "mptamper_av")
  return mp.INFECTED
end
return mp.CLEAN
