if mp.readu_u32(headerpage, 1) == 76 then
  if mp.readu_u32(headerpage, 5) ~= 136193 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, 9) ~= 0 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, 13) ~= 192 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, 17) ~= 1174405120 then
    return mp.CLEAN
  end
  if mp.UfsGetMetadataBool("Lua:FileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:FileInZip", true) then
    return mp.CLEAN
  end
  if mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) == 0 and mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) then
    mp.set_mpattribute("//Lua:ZipWithSingleLnk")
  end
  if mp.UfsGetMetadataBool("Lua:ZipWithMotw", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:ZipWithMotw", true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
