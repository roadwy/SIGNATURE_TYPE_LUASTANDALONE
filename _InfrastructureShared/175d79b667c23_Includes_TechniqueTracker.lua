if mp.GetParentProcInfo() ~= nil then
  if ({
    ["iexplore.exe"] = true,
    ["edge.exe"] = true,
    ["msedge.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
