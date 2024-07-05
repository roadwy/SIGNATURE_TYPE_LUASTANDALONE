local L0_0
L0_0 = macho
L0_0 = L0_0.GetSegment
L0_0 = L0_0("LC_SYMTAB", 0, 21)
if machoLC.__TEXT.__cstring.Size <= 1535 and machoLC.__TEXT.__text.Size <= 767 and string.byte(L0_0, 13) == 14 and string.byte(L0_0, 21) == 240 and mp.getfilesize() < 10000 and machohdr.FileType == 6 and machohdr.NumberOfCommands <= 15 then
  return mp.INFECTED
end
return mp.CLEAN
