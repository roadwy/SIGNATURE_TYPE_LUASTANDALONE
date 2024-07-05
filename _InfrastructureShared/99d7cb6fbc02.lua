if not mp.GetParentProcInfo() then
  return mp.CLEAN
end
if ({
  ["powershell.exe"] = true,
  ["aspnet_compiler.exe"] = true,
  ["iisexpress.exe"] = true
})[mp.GetParentProcInfo().image_path:lower():match("\\([^\\]+)$")] then
  return mp.CLEAN
end
return mp.LOWFI
