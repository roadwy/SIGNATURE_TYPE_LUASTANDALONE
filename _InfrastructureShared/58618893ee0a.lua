if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() <= 53248 and mp.getfilesize() >= 36864 and peattributes.isdll == true and mp.get_mpattribute("Trojan:MSIL/MalInject.A!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
