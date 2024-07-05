local L0_0, L1_1
L0_0 = 0
L1_1 = ""
if this_sigattrlog[1].matched then
  L1_1 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched then
  L1_1 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched then
  L1_1 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched then
  L1_1 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched then
  L1_1 = string.lower(this_sigattrlog[5].utf8p2)
else
  return mp.CLEAN
end
if L1_1 ~= "" then
  if string.find(L1_1, " /mhp ", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /mds ", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /mnt ", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /aflt=", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /ext=", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /ext:", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /sfns ", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /rsf= ", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /lrun=", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /noadmin", 1, true) then
    L0_0 = L0_0 + 1
  end
  if string.find(L1_1, " /flow=", 1, true) then
    L0_0 = L0_0 + 1
  end
end
if L0_0 >= 5 then
  return mp.INFECTED
end
return mp.CLEAN
