if mp.GetUACMetadata() == nil then
  return mp.CLEAN
end
if mp.GetUACMetadata().Type ~= mp.AMSI_UAC_REQUEST_TYPE_COM then
  return mp.CLEAN
end
if string.lower(mp.GetUACMetadata().Info.Clsid) ~= "48012511-82cc-48f3-ae5b-40c7401a5a09" then
  return mp.CLEAN
end
return mp.INFECTED
