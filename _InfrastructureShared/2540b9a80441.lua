if string.lower(string.sub(pe.get_versioninfo().CompanyName, 1, 8)) == "viracure" then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  return mp.INFECTED
end
return mp.CLEAN
