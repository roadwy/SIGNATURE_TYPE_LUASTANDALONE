local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = type
  L1_1 = L1_1(L2_2)
  if L1_1 == "table" then
    L1_1 = #L0_0
  end
elseif L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1.mcafee = "mcafee"
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.AuthenticodeContentType
  if L7_7 ~= nil then
    L7_7 = L6_6.AuthenticodeContentType
  elseif L7_7 ~= "PE" then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = L6_6.Certificates
  if L7_7 ~= nil then
    if L8_8 == "table" then
      for L11_11, L12_12 in L8_8(L9_9) do
        L13_13 = L12_12.Subject
        if L13_13 ~= nil then
          L14_14 = type
          L15_15 = L12_12
          L14_14 = L14_14(L15_15)
          if L14_14 == "table" then
            L14_14 = L13_13.Organization
            if L14_14 ~= nil then
              L15_15 = type
              L15_15 = L15_15(L16_16)
              if L15_15 == "string" then
                L15_15 = string
                L15_15 = L15_15.lower
                L21_21 = L16_16(L17_17)
                L15_15 = L15_15(L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L16_16(L17_17))
                for L19_19, L20_20 in L16_16(L17_17) do
                  L21_21 = string
                  L21_21 = L21_21.find
                  L21_21 = L21_21(L15_15, L19_19, 1, true)
                  if L21_21 ~= nil then
                    L21_21 = "Lua:ThirdPartyCertListSubstring.A!"
                    L21_21 = L21_21 .. L20_20
                    mp.set_mpattribute(L21_21)
                    return mp.INFECTED
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return L2_2
