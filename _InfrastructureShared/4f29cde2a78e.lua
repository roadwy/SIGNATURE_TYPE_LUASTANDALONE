if mp.getfilename():len() >= 28 and mp.getfilename():sub(-28):lower() == "word/_rels/settings.xml.rels" then
  return mp.INFECTED
end
return mp.CLEAN
