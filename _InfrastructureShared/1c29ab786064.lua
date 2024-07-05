if mp.GetBruteMatchData().match_offset == 0 and mp.GetBruteMatchData().is_header then
  if mp.getfilesize() > 64 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, 1) == 1497451600 and mp.readu_u16(headerpage, 5) == 2573 then
    return mp.INFECTED
  end
end
return mp.CLEAN
