if peattributes.is_process then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:UpatreFragC_Nonprocess")
return mp.CLEAN
