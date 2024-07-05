local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p1
end
if L0_0 then
  if string.find(L0_0, "lmud1o4z.exe", 1, true) then
    return mp.CLEAN
  end
  if MpCommon.QueryPersistContext(L0_0, "MasqSuspRenameTargetL2") or MpCommon.QueryPersistContext(L0_0, "MasqSuspCopyTargetL2") then
    return mp.INFECTED
  end
end
return mp.CLEAN
