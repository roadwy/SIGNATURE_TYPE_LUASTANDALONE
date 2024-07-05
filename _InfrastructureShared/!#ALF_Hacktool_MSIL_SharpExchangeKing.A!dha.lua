if pe.get_versioninfo() ~= nil then
  if pe.get_versioninfo().OriginalFilename == nil or pe.get_versioninfo().ProductName == nil then
    return mp.CLEAN
  end
  if pe.get_versioninfo().OriginalFilename == "SharpExchangeKing.exe" and pe.get_versioninfo().ProductName == "ExchangeKing" then
    return mp.INFECTED
  end
end
return mp.CLEAN
