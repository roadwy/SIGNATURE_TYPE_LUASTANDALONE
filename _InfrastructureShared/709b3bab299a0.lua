local L0_0
if this_sigattrlog[32].matched then
  if this_sigattrlog[32].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[32].utf8p2
  end
elseif this_sigattrlog[33].matched then
  if this_sigattrlog[33].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[33].utf8p2
  end
elseif this_sigattrlog[34].matched then
  if this_sigattrlog[34].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[34].utf8p2
  end
elseif this_sigattrlog[35].matched then
  if this_sigattrlog[35].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[35].utf8p2
  end
elseif this_sigattrlog[36].matched then
  if this_sigattrlog[36].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[36].utf8p2
  end
elseif this_sigattrlog[37].matched then
  if this_sigattrlog[37].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[37].utf8p2
  end
elseif this_sigattrlog[38].matched then
  if this_sigattrlog[38].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[38].utf8p2
  end
elseif this_sigattrlog[39].matched then
  if this_sigattrlog[39].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[39].utf8p2
  end
elseif this_sigattrlog[40].matched then
  if this_sigattrlog[40].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[40].utf8p2
  end
elseif this_sigattrlog[41].matched then
  if this_sigattrlog[41].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[41].utf8p2
  end
elseif this_sigattrlog[42].matched then
  if this_sigattrlog[42].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[42].utf8p2
  end
elseif this_sigattrlog[43].matched then
  if this_sigattrlog[43].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[43].utf8p2
  end
elseif this_sigattrlog[44].matched then
  if this_sigattrlog[44].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[44].utf8p2
  end
elseif this_sigattrlog[45].matched then
  if this_sigattrlog[45].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[45].utf8p2
  end
elseif this_sigattrlog[46].matched then
  if this_sigattrlog[46].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[46].utf8p2
  end
elseif this_sigattrlog[47].matched then
  if this_sigattrlog[47].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[47].utf8p2
  end
elseif this_sigattrlog[48].matched then
  if this_sigattrlog[48].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[48].utf8p2
  end
elseif this_sigattrlog[49].matched then
  if this_sigattrlog[49].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[49].utf8p2
  end
elseif this_sigattrlog[50].matched then
  if this_sigattrlog[50].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[50].utf8p2
  end
elseif this_sigattrlog[51].matched then
  if this_sigattrlog[51].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[51].utf8p2
  end
elseif this_sigattrlog[52].matched then
  if this_sigattrlog[52].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[52].utf8p2
  end
elseif this_sigattrlog[53].matched then
  if this_sigattrlog[53].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[53].utf8p2
  end
elseif this_sigattrlog[54].matched then
  if this_sigattrlog[54].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[54].utf8p2
  end
elseif this_sigattrlog[55].matched then
  if this_sigattrlog[55].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[55].utf8p2
  end
elseif this_sigattrlog[56].matched then
  if this_sigattrlog[56].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[56].utf8p2
  end
elseif this_sigattrlog[57].matched then
  if this_sigattrlog[57].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[57].utf8p2
  end
elseif this_sigattrlog[58].matched then
  if this_sigattrlog[58].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[58].utf8p2
  end
elseif this_sigattrlog[59].matched then
  if this_sigattrlog[59].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[59].utf8p2
  end
elseif this_sigattrlog[60].matched then
  if this_sigattrlog[60].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[60].utf8p2
  end
elseif this_sigattrlog[61].matched then
  if this_sigattrlog[61].utf8p2 ~= nil then
    L0_0 = this_sigattrlog[61].utf8p2
  end
elseif this_sigattrlog[62].matched and this_sigattrlog[62].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[62].utf8p2
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
  if not MpCommon.QueryPersistContext(L0_0, "T1036.003") then
    MpCommon.AppendPersistContext(L0_0, "T1036.003", 0)
  end
  if not MpCommon.QueryPersistContext(L0_0, "SysintToolsRenameA") then
    MpCommon.AppendPersistContext(L0_0, "SysintToolsRenameA", 0)
  end
end
return mp.INFECTED
