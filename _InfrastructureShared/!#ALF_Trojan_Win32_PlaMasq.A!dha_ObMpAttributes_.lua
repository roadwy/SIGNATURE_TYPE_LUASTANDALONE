if pe.get_versioninfo() ~= nil then
  if pe.get_versioninfo().CompanyName ~= "Intel Corporation" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().ProductName == "Intel(R) Chipset Device Software" then
    return mp.INFECTED
  end
end
return mp.CLEAN
