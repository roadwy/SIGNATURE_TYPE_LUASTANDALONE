if mp.getfilesize() <= 120000000 then
  mp.set_mpattribute("//LUA:ZipRar7ZFileLE120M.A")
end
if mp.getfilesize() <= 80000000 then
  mp.set_mpattribute("//LUA:ZipRar7ZFileLE80M.A")
end
if mp.getfilesize() <= 40000000 then
  mp.set_mpattribute("//LUA:ZipRar7ZFileLE40M.A")
end
if mp.getfilesize() <= 10000000 then
  mp.set_mpattribute("//LUA:ZipRar7ZFileLE10M.A")
end
if mp.getfilesize() <= 5000000 then
  mp.set_mpattribute("//LUA:ZipRar7ZFileLE5M.A")
end
return mp.CLEAN
