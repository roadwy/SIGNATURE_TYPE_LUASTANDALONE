if mp.GetLnkInfo() == nil then
  return mp.CLEAN
end
if string.find(mp.GetLnkInfo().Arguments:lower(), "comspec", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
