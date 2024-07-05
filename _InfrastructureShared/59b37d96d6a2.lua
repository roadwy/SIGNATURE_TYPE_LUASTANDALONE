local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_HIGH_RID
if L1_1 > L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = {}
  L2_2["rpcnetp.exe"] = true
  L2_2["services.exe"] = true
  L2_2["svchost.exe"] = true
  if L2_2[string.lower(string.sub(L1_1, -30)):match("\\system32\\([^\\]+%.exe)$")] then
    return mp.CLEAN
  end
end
L2_2 = nil
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L2_2 = this_sigattrlog[2].utf8p2
end
if L2_2 ~= nil and string.find(L2_2, "UnistackSvcGroup", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
