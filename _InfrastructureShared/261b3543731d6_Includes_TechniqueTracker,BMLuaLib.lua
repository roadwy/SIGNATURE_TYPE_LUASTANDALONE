local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = L0_0.command_line
  end
elseif L1_1 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.command_line
if string.find(L1_1, "/elfsigner.py", 1, true) or string.find(L1_1, "--no_disclaimer", 1, true) then
  return mp.CLEAN
end
if 50000000 < bm.GetSignatureMatchDuration() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1486", "Impact_Encryption")
return mp.INFECTED
