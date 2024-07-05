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
  L1_1 = L1_1(L0_0, "printisolationhost.exe", 1, true)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = nil
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[1].utf8p1
end
if L1_1 then
  if string.find(L1_1, "lmud1o4z.exe", 1, true) then
    return mp.CLEAN
  end
  if MpCommon.QueryPersistContext(L1_1, "MasqSuspRenameTarget") or MpCommon.QueryPersistContext(L1_1, "MasqSuspCopyTarget") then
    return mp.INFECTED
  end
end
return mp.CLEAN
