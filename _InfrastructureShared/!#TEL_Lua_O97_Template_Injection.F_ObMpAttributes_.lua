local L0_0
L0_0 = string.lower(mp.getfilename())
if L0_0:find("->word/_rels/", 1, true) or L0_0:find("/drawings/_rels/", 1, true) or L0_0:find("/worksheets/_rels/", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
