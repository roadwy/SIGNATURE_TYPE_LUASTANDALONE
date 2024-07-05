if tostring(headerpage):find("Equation.3") == nil and tostring(headerpage):find("%z%z[Ee][Qq][Uu][Aa][Tt][Ii][Oo][Nn].3%z%z") ~= nil then
  mp.set_mpattribute("Lua:OLE.Equation3.NotSentenceCase")
  return mp.INFECTED
end
return mp.INFECTED
