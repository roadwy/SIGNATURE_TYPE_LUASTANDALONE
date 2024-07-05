local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 2097152 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1, L2_2 = nil, nil, nil
L3_3 = 0
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L1_1 = mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)
  L0_0 = mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)
end
if L1_1 == nil then
  L2_2 = mp.getfilename()
  if L2_2 == nil then
    return mp.CLEAN
  end
  if string.find(L2_2:reverse(), "\\", 1, true) == nil then
    return mp.CLEAN
  end
  L3_3 = #L2_2 - string.find(L2_2:reverse(), "\\", 1, true)
  L1_1 = L2_2:sub(L3_3 + 2)
end
if #L1_1 < 16 or #L1_1 > 27 then
  return mp.CLEAN
end
if L1_1:match("^ms%l%l%l+%.exe:%d%d%d%d%d%d+$") ~= nil then
  if 1 == 0 then
    L0_0 = MpCommon.PathToWin32Path(L0_0)
  elseif 1 == 1 then
    L0_0 = L2_2:sub(1, L3_3)
  end
  if L0_0 == nil then
    return mp.CLEAN
  end
  mp.ReportLowfi(L0_0 .. "\\" .. L1_1:match("([^:]+)"), 1634353817)
  return mp.INFECTED
end
return mp.CLEAN
