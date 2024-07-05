local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if L0_0 ~= nil then
  if string.find(L0_0, "socket.socket", 1, true) and string.find(L0_0, "connect", 1, true) and (string.find(L0_0, "subprocess", 1, true) or string.find(L0_0, "popen", 1, true) or string.find(L0_0, "call", 1, true)) then
    return mp.INFECTED
  end
  if string.find(L0_0, "open", 1, true) and string.find(L0_0, "stdin", 1, true) and string.find(L0_0, "stdout", 1, true) and string.find(L0_0, "exec", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
