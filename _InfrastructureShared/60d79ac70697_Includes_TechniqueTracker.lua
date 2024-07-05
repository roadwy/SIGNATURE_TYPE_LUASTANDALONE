if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path) == nil then
    return mp.CLEAN
  end
  if ({
    ["node.exe"] = true,
    ["msbuild.exe"] = true,
    ["editbin.exe"] = true,
    ["link.exe"] = true,
    ["signtool.exe"] = true,
    ["symchk.exe"] = true,
    ["microsoft.servicehub.controller.exe"] = true,
    ["servicehub.host.node.x86.exe"] = true,
    ["servicehub.host.clr.exe"] = true,
    ["vs_installershell.exe"] = true,
    ["testhost.net472.x86.exe"] = true,
    ["symbolarchiveverifier.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.LOWFI
