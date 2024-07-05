local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "dellsupportassistremedationservice.exe", 1, true)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = nil
if this_sigattrlog[1].matched then
  if this_sigattrlog[1].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[1].utf8p2
  end
elseif this_sigattrlog[2].matched then
  if this_sigattrlog[2].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[2].utf8p2
  end
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[3].utf8p2
end
if L1_1 ~= nil and sysio.IsFileExists(L1_1) then
  bm.add_related_file(L1_1)
  MpCommon.AppendPersistContext(string.lower(L1_1), "MasqSuspCopyTargetLowfi", 3600)
end
return mp.INFECTED
