local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
if L1_1 then
  L0_0 = L1_1
elseif L1_1 then
  L0_0 = L1_1
elseif L1_1 then
  L0_0 = L1_1
end
if L0_0 ~= nil then
  for L4_4, L5_5 in L1_1(L2_2) do
    if string.find(L5_5, "/bash", -5, true) or string.find(L5_5, "/zsh", -4, true) or string.find(L5_5, "/wget", -5, true) or string.find(L5_5, "/curl", -5, true) or string.find(L5_5, "/sh", -3, true) or string.find(L5_5, "/python", -7, true) or string.find(L5_5, "/ruby", -5, true) or string.find(L5_5, "/dd", -3, true) or string.find(L5_5, "/xattr", -6, true) or string.find(L5_5, "/launchctl", -10, true) or string.find(L5_5, "/launchd", -8, true) or string.find(L5_5, "/syslogd", -8, true) or string.find(L5_5, "/sysdiagnose", -11, true) or string.find(L5_5, "/sandboxd", -9, true) or string.find(L5_5, "/usbagent", -9, true) or string.find(L5_5, "/trustd", -7, true) or string.find(L5_5, "/xpcproxy", -9, true) then
      if sysio.IsFileExists(L5_5) then
        bm.add_related_file(L5_5)
      end
      TrackPidAndTechniqueBM("BM", "T1036", "DefenseEvasion")
      return mp.INFECTED
    end
  end
end
return L1_1
