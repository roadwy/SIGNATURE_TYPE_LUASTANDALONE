if mp.readu_u32(headerpage, 5) == 151587081 and mp.getfilesize() > 200000000 and mp.crc32(-1, headerpage, 1, 1024) == 2898363002 and string.find(mp.getfilename(), "(RarSfx)", 1, true) then
  mp.set_mpattribute("Lua:AutoItRarSfxLargeScript")
  mp.set_mpattribute("//AutRarLrgScpt")
end
if mp.readu_u32(headerpage, 5) == 168626701 and mp.getfilesize() > 10000 and mp.getfilesize() <= 60000 and mp.crc32(-1, headerpage, 1, 256) == 1133461959 and string.find(mp.getfilename(), "(RarSfx)", 1, true) then
  mp.set_mpattribute("Lua:TrimWhiteSpaceAutoItRarSfxConfig")
end
return mp.CLEAN
