if mp.GetUACMetadata().Type ~= mp.AMSI_UAC_REQUEST_TYPE_COM then
  return mp.FALSE
end
if mp.GetUACMetadata().AutoElevate ~= true then
  return mp.FALSE
end
if string.lower(mp.GetUACMetadata().Info.Clsid) == "a6bfea43-501f-456f-a845-983d3ad7b8f0" or string.lower(mp.GetUACMetadata().Info.Clsid) == "0f87369f-a4e5-4cfc-bd3e-73e6154572dd" then
  return mp.TRUE
end
return mp.FALSE
