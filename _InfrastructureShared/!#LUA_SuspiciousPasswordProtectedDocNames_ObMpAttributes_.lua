local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if mp.getfilesize() < 65536 and mp.getfilesize() > 1048576 then
  return mp.CLEAN
end
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "inv_2022%d%d%d%d december soa%.xlsx") ~= nil or string.find(L0_0, "rfq%-%d%d%d%d%d%d%.xlsx") ~= nil or string.find(L0_0, "2022%- %d%.xlsx") ~= nil or string.find(L0_0, "xvs022%-%d%d%d%d22%.xlsx") ~= nil or string.find(L0_0, "po no a%d%d%d%-%d%d%d%.xlsx") ~= nil or string.find(L0_0, "fob_ship doc_haiphong %d%d%d%d+hq_%.xlsx") ~= nil or string.find(L0_0, "202201%d%d%d%d%d%d%d%d+%.xlsx") ~= nil or string.find(L0_0, "inv %d%d%d z%&z intimates %(%d%d%d+2021%)%.xlsx") ~= nil or string.find(L0_0, "lod4.xlsx", 1, true) ~= nil or string.find(L0_0, "myung in quotation request.xlsx", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
