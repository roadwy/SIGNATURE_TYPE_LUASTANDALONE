if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil then
  if ({
    ["winword.exe"] = true,
    ["powerpnt.exe"] = true,
    ["excel.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path:match("([^\\]+)$"))] then
    return mp.INFECTED
  end
end
return mp.CLEAN
