if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if pe.get_versioninfo() == nil then
  return mp.CLEAN
end
if pe.get_versioninfo().FileDescription == nil or pe.get_versioninfo().FileDescription == "" then
  return mp.CLEAN
end
if pe.get_versioninfo().ProductName == nil or pe.get_versioninfo().ProductName == "" then
  return mp.CLEAN
end
if pe.get_versioninfo().FileDescription == "think-cell component" and pe.get_versioninfo().ProductName == "think-cell" then
  if mp.IsTrustedFile(false) == true then
    mp.set_mpattribute("Lua:ValidSignedThinkCellComponent")
  elseif mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
    mp.set_mpattribute("Lua:SignedThinkCellComponent")
  else
    mp.set_mpattribute("Lua:UnSignedThinkCellComponent")
  end
end
return mp.CLEAN
