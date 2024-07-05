local L0_0, L1_1, L2_2, L3_3
L0_0 = {}
L0_0["qualysagent.exe"] = true
L0_0["pulsesecureservice.exe"] = true
L0_0["911 location manager.exe"] = true
L0_0["logmein.exe"] = true
L0_0["fasm.exe"] = true
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1.image_path
  L2_2 = L2_2(L3_3)
  if L2_2 ~= nil then
    L3_3 = L2_2.match
    L3_3 = L3_3(L2_2, "([^\\]+)$")
    if L0_0[L3_3] or string.find(L2_2, ":\\windows\\assembly\\nativeimages_", 1, true) or string.find(L2_2, ":\\programdata\\ctes\\components\\", 1, true) then
      return mp.CLEAN
    end
    if L2_2:find("\\relauncher\\.+\\studio%.exe$") or L2_2:find("\\relauncher\\.+\\launcher%.exe$") then
      return mp.CLEAN
    end
  end
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.GetProcessCommandLine(L1_1.ppid))
  if L3_3:find("splunkuniversalforwarder", 1, true) then
    return mp.CLEAN
  end
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L3_3 = L1_1.ppid
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(L2_2.image_path)
  if L3_3 ~= nil and (L0_0[L3_3:match("([^\\]+)$")] or string.find(L3_3, ":\\windows\\assembly\\nativeimages_", 1, true) or string.find(L3_3, ":\\programdata\\ctes\\components\\", 1, true)) then
    return mp.CLEAN
  end
end
L3_3 = TrackPidAndTechnique
L3_3("CMDHSTR", "T1016", "network_discovery")
L3_3 = IsDetectionThresholdMet
L3_3 = L3_3("CMDHSTR")
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
