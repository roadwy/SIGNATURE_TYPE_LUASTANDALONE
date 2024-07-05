local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil and string.find(L0_0, "fsockopen", 1, true) and (string.find(L0_0, "shell_exec", 1, true) or string.find(L0_0, "exec", 1, true) or string.find(L0_0, "shell_exec", 1, true) or string.find(L0_0, "system", 1, true) or string.find(L0_0, "passthru", 1, true) or string.find(L0_0, "popen", 1, true) or string.find(L0_0, "proc_open", 1, true)) and (string.find(L0_0, ">&", 1, true) or string.find(L0_0, "array", 1, true)) then
  if string.find(L0_0, "127.0.0.1", 1, true) or string.find(L0_0, "0.0.0.0", 1, true) then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
return mp.CLEAN
