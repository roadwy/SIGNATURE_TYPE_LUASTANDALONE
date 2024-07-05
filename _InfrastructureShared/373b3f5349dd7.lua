local L0_0, L1_1, L2_2
L2_2 = 0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L2_2 = 1
  L0_0 = string.match(string.lower(this_sigattrlog[1].utf8p1), "\\([^\\]+)$")
  L1_1 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L2_2 = 2
  L0_0 = string.match(string.lower(this_sigattrlog[2].utf8p1), "\\([^\\]+)$")
  L1_1 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L2_2 = 3
  L0_0 = string.match(string.lower(this_sigattrlog[3].utf8p1), "\\([^\\]+)$")
  L1_1 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L2_2 = 4
  L0_0 = string.match(string.lower(this_sigattrlog[4].utf8p1), "\\([^\\]+)$")
  L1_1 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L2_2 = 5
  L0_0 = string.match(string.lower(this_sigattrlog[5].utf8p1), "\\([^\\]+)$")
  L1_1 = string.lower(this_sigattrlog[5].utf8p2)
elseif this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
  L2_2 = 6
  L0_0 = string.match(string.lower(this_sigattrlog[6].utf8p1), "\\([^\\]+)$")
  L1_1 = string.lower(this_sigattrlog[6].utf8p2)
else
  return mp.CLEAN
end
if L0_0 ~= nil and L1_1 ~= nil then
  if L2_2 == 1 and (string.find(L1_1, "cpuage.tnt", 1, true) ~= nil or string.find(L0_0, "cpuoptimizer", 1, true) ~= nil or string.find(L0_0, "checkcpu", 1, true) ~= nil) then
    return mp.INFECTED
  elseif L2_2 == 2 and (string.find(L1_1, "cpuchecker.txt", 1, true) ~= nil or string.find(L0_0, "radlover", 1, true) ~= nil or string.find(L0_0, "cpuulover", 1, true) ~= nil) then
    return mp.INFECTED
  elseif L2_2 == 3 and (string.find(L1_1, "stream.txt", 1, true) ~= nil or string.find(L0_0, "superlover", 1, true) ~= nil or string.find(L0_0, "flaterem", 1, true) ~= nil or string.find(L0_0, "strdat", 1, true) ~= nil) then
    return mp.INFECTED
  elseif L2_2 == 4 and (string.find(L1_1, "newradage.tnt", 1, true) ~= nil or string.find(L0_0, "newageishere", 1, true) ~= nil or string.find(L0_0, "cpunewage", 1, true) ~= nil) then
    return mp.INFECTED
  elseif L2_2 == 5 and (string.find(L1_1, "antiusbshortcut.zip", 1, true) ~= nil or string.find(L0_0, "antishortcutupdate", 1, true) ~= nil or string.find(L0_0, "antiusbshortcut", 1, true) ~= nil) then
    return mp.INFECTED
  elseif L2_2 == 6 and (string.find(L1_1, "winddowsupdater.zip", 1, true) ~= nil or string.find(L0_0, "winddowsupdater", 1, true) ~= nil) then
    return mp.INFECTED
  end
end
return mp.CLEAN
