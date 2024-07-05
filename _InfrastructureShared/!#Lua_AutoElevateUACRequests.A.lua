if mp.GetUACMetadata() ~= nil then
  if mp.GetUACMetadata().Type == mp.AMSI_UAC_REQUEST_TYPE_EXE and mp.GetUACMetadata().AutoElevate == true then
    return mp.LOWFI
  end
  if mp.GetUACMetadata().Type == mp.AMSI_UAC_REQUEST_TYPE_COM and (string.upper(mp.GetUACMetadata().Info.Clsid) == "3AD05575-8857-4850-9277-11B85BDB8E09" or string.upper(mp.GetUACMetadata().Info.Clsid) == "4D111E08-CBF7-4f12-A926-2C7920AF52FC") then
    return mp.LOWFI
  end
end
return mp.CLEAN
