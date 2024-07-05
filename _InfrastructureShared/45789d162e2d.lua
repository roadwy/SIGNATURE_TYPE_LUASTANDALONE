if string.find(string.lower(mp.getfilename()), "lenovo", 1, true) ~= nil or mp.get_mpattribute("PACKED_WITH:[MSILRES:DisplayFusion.Properties.Resources.resources]") then
  mp.set_mpattribute("HSTR:AllowList:SkypeSneak")
  return mp.CLEAN
end
return mp.INFECTED
