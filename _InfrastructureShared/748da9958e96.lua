if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("PUA:MacOS/AMCleaner.ZM")
  return mp.INFECTED
end
return mp.LOWFI
