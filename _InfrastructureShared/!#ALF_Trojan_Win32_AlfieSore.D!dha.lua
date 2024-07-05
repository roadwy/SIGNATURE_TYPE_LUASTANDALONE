if pe.get_versioninfo() ~= nil and pe.get_versioninfo().CompanyName == "Brain Damage LLC" then
  return mp.INFECTED
end
return mp.CLEAN
