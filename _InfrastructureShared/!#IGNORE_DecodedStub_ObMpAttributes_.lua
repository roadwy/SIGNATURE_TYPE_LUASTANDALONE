if string.sub(mp.getfilename(), -16) == "->(EmbeddedCode)" then
  return mp.INFECTED
end
return mp.CLEAN
