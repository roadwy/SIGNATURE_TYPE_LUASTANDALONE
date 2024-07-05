local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == "vmware-vmx.exe" then
  return mp.CLEAN
end
if pe.get_versioninfo() ~= nil then
  if pe.get_versioninfo().FileOriginalName == "VMware.SpbmApi.dll" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().FileOriginalName == "setup.exe" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().CompanyName ~= "VMware, Inc." then
    return mp.CLEAN
  end
  if pe.get_versioninfo().ProductName == "VMware" then
    return mp.INFECTED
  end
end
return mp.CLEAN
