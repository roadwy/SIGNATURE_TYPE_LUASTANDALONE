if string.lower(pe.get_versioninfo().ProductName) == "zoomify plug-in for internet explorer" then
  return mp.INFECTED
end
return mp.CLEAN
