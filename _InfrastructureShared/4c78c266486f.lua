if not mp.get_mpattribute("MpPeekIntoResources") then
  mp.set_mpattribute("MpPeekIntoResources")
end
if peattributes.no_security == true and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
