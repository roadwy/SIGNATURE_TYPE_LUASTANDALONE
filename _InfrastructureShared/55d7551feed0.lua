if mp.GetParentProcInfo() ~= nil then
  if ({
    ["winword.exe"] = true,
    ["excel.exe"] = true,
    ["powerpnt.exe"] = true,
    ["outlook.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
