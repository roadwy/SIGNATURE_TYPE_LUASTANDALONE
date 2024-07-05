local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
if L0_0 ~= nil then
elseif L1_1 == 0 then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = L5_5.AuthenticodeContentType
  if L6_6 ~= "PE" then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = L5_5.Certificates
  if L6_6 ~= nil then
    for _FORV_10_, _FORV_11_ in ipairs(L6_6) do
      if _FORV_11_.Subject ~= nil and _FORV_11_.Subject.Organization ~= nil and _FORV_11_.Subject.CommonName then
        if mp.utf16to8(_FORV_11_.Subject.Organization) == "No Organization Affiliation" then
          if ({
            ["Yuanyuan Mei"] = true,
            ["Tianjing Cheng"] = true,
            ["Ding Ruan"] = true,
            ["Xin Zhou"] = true,
            ["Yu Bao"] = true,
            ["Yuanyuan Zhang"] = true,
            ["Yupeng Zhang"] = true,
            ["Chao Wei"] = true,
            ["Beijing Caiyunshidai Technology Co., Ltd."] = true,
            ["BIG JOURNEY TECHNOLOGY LIMITED"] = true,
            ["VANKY TECHNOLOGY LIMITED"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertSasquor.A")
          elseif ({
            ["Wenchao Zhang"] = true,
            ["Junyan Li"] = true,
            ["Skytouch Technology Co., Limited"] = true,
            ["Beijing Xingyunwang Technology Co., Ltd"] = true,
            ["Hefei Infinity Technology Co., Ltd."] = true,
            ["Shanghai Yuntong Technology Co., Ltd."] = true,
            ["Xiaodong Wang"] = true,
            ["Jia Lu"] = true,
            ["Peng Zhang"] = true,
            ["Thinknice Co. Limited"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertSupTab.A")
          elseif ({
            ["Jinnan Wu"] = true,
            ["Yang Liu"] = true,
            ["Chencheng Cai"] = true,
            ["Yanling Sun"] = true,
            ["Jianfei Zhu"] = true,
            ["Dening Hu"] = true,
            ["Nayun Online Network Technology (Shenzhen) Co., Ltd."] = true,
            ["Yuesong Pu"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertXadupi.A")
          elseif ({
            ["Sice Xing"] = true,
            ["Wei Liu"] = true,
            ["Shan Feng"] = true,
            ["Shulan Hou"] = true,
            ["Fuyuan Zhou"] = true,
            ["Luhong Han"] = true,
            ["Yongli Zhang"] = true,
            ["Jiang Liu"] = true,
            ["Yongli Li"] = true,
            ["Sivi Technology Limited"] = true,
            ["Zhiming Yuan"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertGhokswa.A")
          elseif ({
            ["Zhongju Wu"] = true,
            ["Houtao Zhou"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertSuweezy.A")
          elseif ({
            ["Weiwei He"] = true,
            ["EVANGEL TECHNOLOGY(HK) LIMITED"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertChuckenit.A")
          end
        elseif ({
          ["Beijing Caiyunshidai Technology Co., Ltd."] = true,
          ["BIG JOURNEY TECHNOLOGY LIMITED"] = true,
          ["VANKY TECHNOLOGY LIMITED"] = true
        })[mp.utf16to8(_FORV_11_.Subject.Organization)] then
          if ({
            ["Yuanyuan Mei"] = true,
            ["Tianjing Cheng"] = true,
            ["Ding Ruan"] = true,
            ["Xin Zhou"] = true,
            ["Yu Bao"] = true,
            ["Yuanyuan Zhang"] = true,
            ["Yupeng Zhang"] = true,
            ["Chao Wei"] = true,
            ["Beijing Caiyunshidai Technology Co., Ltd."] = true,
            ["BIG JOURNEY TECHNOLOGY LIMITED"] = true,
            ["VANKY TECHNOLOGY LIMITED"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertSasquor.A")
          end
        elseif ({
          ["Skytouch Technology Co., Limited"] = true,
          ["Beijing Xingyunwang Technology Co., Ltd"] = true,
          ["Hefei Infinity Technology Co., Ltd."] = true,
          ["Shanghai Yuntong Technology Co., Ltd."] = true,
          ["Thinknice Co. Limited"] = true
        })[mp.utf16to8(_FORV_11_.Subject.Organization)] then
          if ({
            ["Wenchao Zhang"] = true,
            ["Junyan Li"] = true,
            ["Skytouch Technology Co., Limited"] = true,
            ["Beijing Xingyunwang Technology Co., Ltd"] = true,
            ["Hefei Infinity Technology Co., Ltd."] = true,
            ["Shanghai Yuntong Technology Co., Ltd."] = true,
            ["Xiaodong Wang"] = true,
            ["Jia Lu"] = true,
            ["Peng Zhang"] = true,
            ["Thinknice Co. Limited"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertSupTab.A")
          end
        elseif ({
          ["EVANGEL TECHNOLOGY(HK) LIMITED"] = true
        })[mp.utf16to8(_FORV_11_.Subject.Organization)] then
          if ({
            ["Weiwei He"] = true,
            ["EVANGEL TECHNOLOGY(HK) LIMITED"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertChuckenit.A")
          end
        elseif ({
          ["Sivi Technology Limited"] = true
        })[mp.utf16to8(_FORV_11_.Subject.Organization)] then
          if ({
            ["Sice Xing"] = true,
            ["Wei Liu"] = true,
            ["Shan Feng"] = true,
            ["Shulan Hou"] = true,
            ["Fuyuan Zhou"] = true,
            ["Luhong Han"] = true,
            ["Yongli Zhang"] = true,
            ["Jiang Liu"] = true,
            ["Yongli Li"] = true,
            ["Sivi Technology Limited"] = true,
            ["Zhiming Yuan"] = true
          })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
            mp.set_mpattribute("Lua:ElexCertGhokswa.A")
          end
        elseif ({
          ["Nayun Online Network Technology (Shenzhen) Co., Ltd."] = true
        })[mp.utf16to8(_FORV_11_.Subject.Organization)] and ({
          ["Jinnan Wu"] = true,
          ["Yang Liu"] = true,
          ["Chencheng Cai"] = true,
          ["Yanling Sun"] = true,
          ["Jianfei Zhu"] = true,
          ["Dening Hu"] = true,
          ["Nayun Online Network Technology (Shenzhen) Co., Ltd."] = true,
          ["Yuesong Pu"] = true
        })[mp.utf16to8(_FORV_11_.Subject.CommonName)] then
          mp.set_mpattribute("Lua:ElexCertXadupi.A")
        end
      end
    end
  end
end
return L1_1
