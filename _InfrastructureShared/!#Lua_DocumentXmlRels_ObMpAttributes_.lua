local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if #L0_0 > #"->word/_rels/document.xml.rels" and L0_0:sub(-#"->word/_rels/document.xml.rels") == "->word/_rels/document.xml.rels" then
  return mp.INFECTED
end
return mp.CLEAN
