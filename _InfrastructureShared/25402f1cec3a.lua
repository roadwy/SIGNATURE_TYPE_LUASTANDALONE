if string.lower(string.sub(pe.get_versioninfo().CompanyName, 1, 12)) == "bilberrysoft" then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  return mp.INFECTED
end
return mp.LOWFI
