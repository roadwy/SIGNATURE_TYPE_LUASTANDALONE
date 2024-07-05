local L0_0, L1_1
if this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
end
if this_sigattrlog[9].matched and this_sigattrlog[9].wp2 ~= nil then
  L1_1 = this_sigattrlog[9].utf8p2
elseif this_sigattrlog[10].matched and this_sigattrlog[10].wp2 ~= nil then
  L1_1 = this_sigattrlog[10].utf8p2
end
function checkTaint()
  if isTainted(_UPVALUE0_, "remote_file_created_taint") then
    return mp.INFECTED
  end
  if string.sub(_UPVALUE0_, 0, 5) == "/tmp/" or string.sub(_UPVALUE0_, 0, 9) == "/var/tmp/" or string.sub(_UPVALUE0_, 0, 9) == "/dev/shm/" then
    return true
  end
  return false
end
if L1_1 ~= nil then
  if string.find(L1_1, "-perm", 1, true) and (string.match(L1_1, "(%s)[-/](0*)200[07]") or string.match(L1_1, "(%s)-(0*)400[07]") or string.match(L1_1, "(%s)-(0*)6000") or string.match(L1_1, "(%s)-(0*)222") or string.match(L1_1, "(%s)-(0*)0002") or string.find(L1_1, "u=s", 1, true) or string.find(L1_1, "g=s", 1, true) or string.find(L1_1, "-o w", 1, true) or string.find(L1_1, "-o x", 1, true)) then
    if checkTaint() == true then
      return mp.INFECTED
    end
  elseif string.find(L1_1, " -writable ", 1, true) and (string.match(L1_1, "(%s)-type%s+[fd]") or string.find(L1_1, "-not -user", 1, true)) and checkTaint() then
    return mp.INFECTED
  end
end
return mp.CLEAN
