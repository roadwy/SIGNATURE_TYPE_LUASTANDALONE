if mp.getfilesize() < 184320 then
  return mp.CLEAN
end
if mp.bitor(mp.readu_u32(headerpage, 1), 538976288) ~= 1667594341 then
  return mp.CLEAN
end
if mp.bitor(mp.readu_u32(headerpage, 5), 538976288) ~= 677737589 then
  return mp.CLEAN
end
if nil ~= tostring(headerpage):match("^[eE][xX][eE][cC][uU][tT][eE]%([cC][hH][rR]%(") then
  return mp.INFECTED
elseif nil ~= tostring(headerpage):match("^[eE][xX][eE][cC][uU][tT][eE][gG][lL][oO][bB][aA][lL]%([cC][hH][rR]%(") then
  return mp.INFECTED
end
return mp.CLEAN
