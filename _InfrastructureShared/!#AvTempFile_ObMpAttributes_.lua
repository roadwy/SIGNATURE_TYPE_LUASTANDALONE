local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L1_1 = mp
  L1_1 = L1_1.bitor
  L1_1 = L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
  L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
  if L1_1 == nil then
    return mp.CLEAN
  end
  L1_1 = string.lower(L1_1)
  if not L0_0 or not L1_1 then
    return mp.CLEAN
  end
  if L1_1 == "clamscan.exe" and string.find(L0_0, "clamav%-[%w]+%.[%w]+%.clamtmp") then
    return mp.INFECTED
  end
  if L1_1 == "avp.exe" and string.find(L0_0, "windows\\temp\\ioc[%w]+%.tmp") then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
