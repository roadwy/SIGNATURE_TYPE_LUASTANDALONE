local L0_0
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
  if string.find(L0_0, "find", 1, true) and string.find(L0_0, "-perm", 1, true) and (string.find(L0_0, "2000", 1, true) or string.find(L0_0, "4000", 1, true) or string.find(L0_0, "6000", 1, true) or string.find(L0_0, "writable", 1, true) or string.find(L0_0, "-2", 1, true)) then
    return mp.INFECTED
  elseif string.find(L0_0, "find", 1, true) and string.find(L0_0, "-name", 1, true) and (string.find(L0_0, ".htpasswd", 1, true) or string.find(L0_0, ".bash_history", 1, true) or string.find(L0_0, ".fetchmailrc", 1, true) or string.match(L0_0, "(.+conf.+.php)")) then
    return mp.INFECTED
  end
end
return mp.CLEAN
