local L0_0
L0_0 = nri
L0_0 = L0_0.GetRawResponseBlob
L0_0 = L0_0()
if L0_0 and MpCommon.BinaryRegExpSearch("\\\\\\\\10\\.[0-9\\.]+|172\\.[0-9\\.]+|192\\.168\\.[0-9\\.]+\\\\d+", L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
