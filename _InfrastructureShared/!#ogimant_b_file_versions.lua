if peattributes.isexe == false then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if peattributes.no_resources == true then
  return mp.CLEAN
end
if mp.getfilesize() < 4096 or mp.getfilesize() > 1048576 then
  return mp.CLEAN
end
if pehdr.TimeDateStamp ~= 708992537 then
  return mp.CLEAN
end
if pe.get_versioninfo() == nil then
  return mp.CLEAN
end
if pe.get_versioninfo().FileVersion == "5.1.2600.2180" and pe.get_versioninfo().ProductName == "Windows\174 NetMeeting\174" then
  mp.set_mpattribute("//LUA:SoftwareBundler:Win32/Ogimant.gen!B_FileVersion")
end
if pe.get_versioninfo().CompanyName == "Micr\208\190s\208\190ft C\208\190rp\208\190ration" then
  mp.set_mpattribute("//LUA:SoftwareBundler:Win32/Ogimant.gen!B_FileVersion")
end
return mp.CLEAN
