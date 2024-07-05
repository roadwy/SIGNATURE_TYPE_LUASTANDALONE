local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = {}
  L1_1["tentacle.exe"] = true
  L1_1["javaw.exe"] = true
  L1_1["java.exe"] = true
  L1_1["ruby.exe"] = true
  L1_1["actifio-install.exe"] = true
  L1_1["actifio-install.tmp"] = true
  L1_1["installer.exe"] = true
  L1_1["monitoringhost.exe"] = true
  L1_1["choco.exe"] = true
  L1_1["splunkd.exe"] = true
  L1_1["qualysagent.exe"] = true
  L1_1["agentcore.exe"] = true
  L1_1["azurerolelifecycletask.exe"] = true
  L1_1["ecosystem.agentsetup.tmp"] = true
  L1_1["ecosystem.agentsetup.exe"] = true
  L2_2 = L0_0.match
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= nil then
    L2_2 = L3_3
    if L3_3 then
      return L3_3
    end
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
if L1_1 ~= nil then
  L2_2 = L1_1.match
  L2_2 = L2_2(L3_3, L4_4)
  L2_2 = L3_3
  for L6_6, L7_7 in L3_3(L4_4) do
    L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
    if sysio.IsFileExists(L7_7) == true then
      bm.add_related_file(L7_7)
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
