local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2, L3_3, L4_4 = nil, nil, nil
for _FORV_8_, _FORV_9_ in ipairs(L0_0) do
  L2_2 = string.lower(_FORV_9_.image_path)
  L3_3, L4_4 = string.find(L2_2, "/postgres", 1, true)
  if L3_3 ~= nil and L4_4 ~= nil then
    return mp.INFECTED
  end
  L3_3, L4_4 = string.find(L2_2, "/httpd", 1, true)
  if L3_3 ~= nil and L4_4 ~= nil then
    return mp.INFECTED
  end
  L3_3, L4_4 = string.find(L2_2, "/nginx", 1, true)
  if L3_3 ~= nil and L4_4 ~= nil then
    return mp.INFECTED
  end
  L3_3, L4_4 = string.find(L2_2, "/php-fpm7", 1, true)
  if L3_3 ~= nil and L4_4 ~= nil then
    return mp.INFECTED
  end
  L3_3, L4_4 = string.find(L2_2, "/mysqld", 1, true)
  if L3_3 ~= nil and L4_4 ~= nil then
    return mp.INFECTED
  end
  L3_3, L4_4 = string.find(L2_2, "/dnsmasq", 1, true)
  if L3_3 ~= nil and L4_4 ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
