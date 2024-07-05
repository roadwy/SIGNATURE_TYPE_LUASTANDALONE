if peattributes.isexe == true or peattributes.isdll == true then
  mp.set_mpattribute("LUA:VeriatoCertClean")
  return mp.INFECTED
end
return mp.CLEAN
