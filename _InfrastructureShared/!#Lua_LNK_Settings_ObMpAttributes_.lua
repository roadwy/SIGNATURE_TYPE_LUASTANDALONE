local L0_0
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 61 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L0_0 = L0_0(headerpage, 21)
if L0_0 ~= nil and L0_0 ~= 0 then
  if mp.bitand(L0_0, 4) == 4 then
    mp.set_mpattribute("Lua:LNK_Settings!HasNameComment")
  end
  if mp.bitand(L0_0, 8) == 8 then
    mp.set_mpattribute("Lua:LNK_Settings!HasRelativePath")
  end
  if mp.bitand(L0_0, 16) == 16 then
    mp.set_mpattribute("Lua:LNK_Settings!HasWorkingDir")
  end
  if mp.bitand(L0_0, 32) == 32 then
    mp.set_mpattribute("Lua:LNK_Settings!HasArguments")
  else
    mp.set_mpattribute("Lua:LNK_Settings!HasNoArguments")
  end
  if mp.bitand(L0_0, 64) == 64 then
    mp.set_mpattribute("Lua:LNK_Settings!HasIconLocation")
  end
  if mp.bitand(L0_0, 128) == 128 then
    mp.set_mpattribute("Lua:LNK_Settings!IsUnicode")
  end
  if mp.bitand(L0_0, 16384) == 16384 then
    mp.set_mpattribute("Lua:LNK_Settings!HasExpIcon")
  end
end
if mp.readu_u16(headerpage, 61) ~= nil and mp.readu_u16(headerpage, 61) ~= 0 then
  if mp.readu_u16(headerpage, 61) == 1 then
    mp.set_mpattribute("Lua:LNK_Settings!RunNormal")
  elseif mp.readu_u16(headerpage, 61) == 3 then
    mp.set_mpattribute("Lua:LNK_Settings!RunMaximized")
  elseif mp.readu_u16(headerpage, 61) == 7 then
    mp.set_mpattribute("Lua:LNK_Settings!RunMinimized")
  end
end
return mp.CLEAN
