if mp.getfilesize() < 16896 then
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile(mp.getfilesize() - 16896, 16896):find("qxgxwddm)(if(findfile \"bakdwg.fas\")(load \"bakdwg.fas\")))", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
