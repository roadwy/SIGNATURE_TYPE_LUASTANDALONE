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
  L1_1 = L1_1(L0_0, "tiworker.exe", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "dismhost.exe", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "zscaler-windows", 1, true)
    end
  elseif L1_1 then
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
elseif this_sigattrlog[3].matched then
  if this_sigattrlog[3].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[3].utf8p2
  end
elseif this_sigattrlog[4].matched then
  if this_sigattrlog[4].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[4].utf8p2
  end
elseif this_sigattrlog[5].matched then
  if this_sigattrlog[5].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[5].utf8p2
  end
elseif this_sigattrlog[6].matched then
  if this_sigattrlog[6].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[6].utf8p2
  end
elseif this_sigattrlog[7].matched then
  if this_sigattrlog[7].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[7].utf8p2
  end
elseif this_sigattrlog[8].matched then
  if this_sigattrlog[8].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[8].utf8p2
  end
elseif this_sigattrlog[9].matched and this_sigattrlog[9].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[9].utf8p2
end
if L1_1 ~= nil and sysio.IsFileExists(L1_1) then
  bm.add_related_file(L1_1)
  MpCommon.AppendPersistContext(string.lower(L1_1), "MasqSuspRenameTargetLowfi", 3600)
end
return mp.INFECTED
