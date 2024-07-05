local L0_0, L1_1, L2_2
if 50000000 < bm.GetSignatureMatchDuration() then
  return mp.CLEAN
end
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
  L1_1 = string.match(L0_0, "/([^/]+)$")
  if not L1_1 then
    return mp.CLEAN
  end
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L2_2 = this_sigattrlog[2].utf8p2
end
if L2_2 ~= nil and (string.find(L2_2, "insmod " .. L1_1, 1, true) or string.find(L2_2, "insmod " .. L0_0, 1, true)) and string.find(L1_1, ".ko", -3, true) then
  return mp.CLEAN
end
bm.add_related_string("DroppedKernelModule", L0_0, bm.RelatedStringBMReport)
bm.add_related_string("KernelModuleLoadCmdLine", L2_2, bm.RelatedStringBMReport)
return mp.INFECTED
