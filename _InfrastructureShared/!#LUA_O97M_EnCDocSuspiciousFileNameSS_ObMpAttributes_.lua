local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "compensation%-%d%d%d%d%d%d+%.xls") ~= nil or string.find(L0_0, "complaint%-%d%d%d%d%d%d+%-%d%d%d%d%d%d+%.xls") ~= nil or string.find(L0_0, "calculation%-%d%d%d%d%d%d+%-%d%d%d%d%d%d+%.xls") ~= nil or string.find(L0_0, "account%-%d%d%d%d%d%d+%.xls") ~= nil or string.find(L0_0, "ref%-%d%d%d%d%d%d+%-oct%-%d%d%.xls") ~= nil or string.find(L0_0, "early_access%.%-%d%d%d%d%d%d+_2021%d%d+%.xlsb") ~= nil or string.find(L0_0, "castingxinvite%.%-%d%d%d+_2021%d%d+%.xlsb") ~= nil or string.find(L0_0, "casting invite%.%-%d%d%d+_2021%d%d+%.xlsb") ~= nil or string.find(L0_0, "compl%-%d%d%d%d%d+%-nov%-0%d%.xlsm") ~= nil or string.find(L0_0, "att202111%d%d%d%d%d+_%d%d%d+_%d%d%.xls") ~= nil or string.find(L0_0, "cmpl%-%d%d%d%d%d+%-dec%-%d%d%.xlsb") ~= nil or string.find(L0_0, "ref%-%d%d%d%d%d%d+%-dec%-%d%d%.xlsb") ~= nil or string.find(L0_0, "summary%-%d%d%d%d%d%d+%-feb%-%d%d%.xlsb") ~= nil or string.find(L0_0, "summary%-%d%d%d%d%d%d+%-mar%-%d%d%.xlsb") ~= nil or string.find(L0_0, "attachments_sqc_03%d%d22_pyx_03%d%d22%.xlsm") ~= nil or string.find(L0_0, "w%d%d%d%d+_202203%d%d%d+%.xlsm") ~= nil or string.find(L0_0, "bf%d%d%d%d%d%d+_202203%d%d%d+%.xlsm") ~= nil or string.find(L0_0, "xbx%d%d%d%d%d+_202203%d%d%d+%.xlsm") ~= nil or string.find(L0_0, "ref%-%d%d%d%d%d+%-mar%-%d%d%.xlsb") ~= nil or string.find(L0_0, "compliance%-report%-%d%d%d%d%d+%-mar%-%d%d%.xlsb") ~= nil or string.find(L0_0, "rechnungs%-details 2022%.03%.%d%d_%d%d+%.xlsm") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
