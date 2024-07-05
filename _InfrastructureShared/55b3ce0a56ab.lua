local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_HIGH_RID
if L1_1 < L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 >= 15 then
    L2_2 = {}
    L2_2["devenv.exe"] = true
    L2_2["w3wp.exe"] = true
    L2_2["iisexpress.exe"] = true
    L2_2["encompass.exe"] = true
    L2_2["dtexec.exe"] = true
    L2_2["sqlnexus.exe"] = true
    L2_2["mesclient.exe"] = true
    L2_2["ssms.exe"] = true
    L2_2["msbuild.exe"] = true
    L2_2["isserverexec.exe"] = true
    L3_3 = string
    L3_3 = L3_3.lower
    L8_8 = L4_4(L5_5, L6_6)
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5, L6_6))
    L3_3 = L3_3.match
    L3_3 = L3_3(L4_4, L5_5)
    if L4_4 then
      return L4_4
    end
  end
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L2_2 = L3_3.utf8p2
  end
end
if L2_2 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
    if sysio.IsFileExists(L8_8) then
      bm.add_related_file(L8_8)
    end
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
