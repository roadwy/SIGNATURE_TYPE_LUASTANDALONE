if mp.GetParentProcInfo() ~= nil then
  if ({
    ["winword.exe"] = true,
    ["excel.exe"] = true,
    ["powerpnt.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.LOWFI
  end
end
return mp.CLEAN
