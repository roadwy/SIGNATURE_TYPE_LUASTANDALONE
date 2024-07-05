local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L7_6, L8_7
for _FORV_8_ = 1, L7_6.SIGATTR_LOG_SZ do
  if sigattr_head[_FORV_8_].matched and sigattr_head[_FORV_8_].wp1 ~= nil and sigattr_head[_FORV_8_].wp1 ~= "" then
    L0_0 = sigattr_head[_FORV_8_].utf8p1
    if string.len(L0_0) > 15 then
      if sigattr_head[_FORV_8_].attribute == 16384 and L1_1 == nil then
        L1_1 = L0_0:match("\\(%l%l%l%l%l%l%l%l%l%l%l%l).exe")
      end
      if sigattr_head[_FORV_8_].attribute == 16393 then
        if L2_2 == nil then
          L4_4 = L0_0:match("\\CURRENTVERSION\\RUN\\\\(%l%l%l%l%l%l%l%l%l%l%l%l)")
          if L4_4 ~= nil and sigattr_head[_FORV_8_].wp2 ~= nil and sigattr_head[_FORV_8_].wp2 ~= "" then
            L2_2 = string.match(sigattr_head[_FORV_8_].utf8p2, "\\(%l%l%l%l%l%l%l%l%l%l%l%l).exe")
            if L2_2 ~= nil and L2_2 ~= L4_4 then
              L2_2 = nil
            end
          end
        end
        if L3_3 == nil then
          L3_3 = L0_0:match("\\CURRENTVERSION\\\\(%l%l%l%l%l%l%l%l%l%l%l%l)")
        end
      end
    end
  end
end
if L1_1 == nil then
  return L5_5
end
if L2_2 == nil then
  return L5_5
end
if L3_3 == nil then
  return L5_5
end
if L1_1 == L3_3 and L2_2 == L3_3 then
  return L5_5
end
return L5_5
