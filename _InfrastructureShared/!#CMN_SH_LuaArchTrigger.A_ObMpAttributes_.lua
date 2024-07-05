if mp.getfilesize() ~= nil and mp.getfilesize() >= 20480 then
  return mp.CLEAN
end
if #mp.enum_mpattributesubstring("SCPT:SH/Architecture_") > 7 then
  return mp.INFECTED
end
if #mp.enum_mpattributesubstring("SCPT:SH/Architecture_") + #mp.enum_mpattributesubstring("SCPT:SH/os_distro_") > 6 then
  return mp.INFECTED
end
return mp.CLEAN
