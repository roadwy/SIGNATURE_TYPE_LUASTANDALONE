if mp.GetParentProcInfo() ~= nil then
  if not ({
    ["pcwrun.exe"] = true,
    ["sihost.exe"] = true,
    ["gpscript.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
