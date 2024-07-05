local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
if L1_1 > MpCommon.SECURITY_MANDATORY_MEDIUM_RID then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 ~= nil then
  if ({
    ["cmstp.exe"] = true,
    ["dllhost.exe"] = true
  })[string.lower(string.sub(L1_1, -15)):match("\\([^\\]+)$")] then
    return mp.CLEAN
  end
end
bm.add_related_file(L1_1)
return mp.INFECTED
