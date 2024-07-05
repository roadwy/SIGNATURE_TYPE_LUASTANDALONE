local L0_0
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if MpCommon.StringRegExpSearch("^file:\\/\\/\\w+.com\\/\\w+\\/\\w+\\.zip$", string.lower(L0_0)) == true then
  return mp.INFECTED
end
return mp.CLEAN
