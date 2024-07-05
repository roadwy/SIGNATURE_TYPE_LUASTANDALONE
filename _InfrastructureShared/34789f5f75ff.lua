if not peattributes.no_resources and pe.contains_va(3, hstrlog[1].VA) and pesecs[3].Name == ".data" then
  return mp.INFECTED
end
return mp.CLEAN
