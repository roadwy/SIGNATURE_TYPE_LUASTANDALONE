local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = reportHeaders
L1_1 = {L2_2, L3_3}
L0_0(L1_1)
L0_0, L1_1 = nil, nil
if L2_2 == 0 then
  return L2_2
end
for _FORV_5_ = L2_2.SIGATTR_LOG_SZ, 1, -1 do
  if sigattr_tail[_FORV_5_].attribute == 28768 and sigattr_tail[_FORV_5_].matched and sigattr_tail[_FORV_5_].utf8p1 then
    L0_0 = sigattr_tail[_FORV_5_].utf8p1
  elseif sigattr_tail[_FORV_5_].attribute == 28769 and sigattr_tail[_FORV_5_].matched and sigattr_tail[_FORV_5_].utf8p1 then
    L1_1 = sigattr_tail[_FORV_5_].utf8p1
  end
  if L0_0 and L1_1 then
    break
  end
end
if not L0_0 or not L1_1 then
  return L2_2
end
L3_3["a0e9f5d64349fb13191bc781f81f42e1:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["72a589da586844d7f0818ce684948eea:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:f176ba63b4d68e576b5ba345bec2c7b7"] = true
L3_3["d0ec4b50a944b182fc10ff51f883ccf7:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["294b2f1dc22c6e6c3231d2fe311d504b:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:e35df3e00ca4ef31d42b34bebaa2f86e"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:fd4bc6cea4877646ccd62f0792ec0b62"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:46e8c907c5cc3cf4b4420e76da5b4dba"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:b31c0b82752ea0e2c48b8ce46e9263e5"] = true
L3_3["72a589da586844d7f0818ce684948eea:fd4bc6cea4877646ccd62f0792ec0b62"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:6d6b821affda5de6562d217770a7ead0"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:567bb420d39046dbfd1f68b558d86382"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:ec74a5c51106f0419184d0dd08fb05bc"] = true
L3_3["51c64c77e60f3980eea90869b68c58a8:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["72a589da586844d7f0818ce684948eea:8cb68dc6ad0365d44af24b254ef70844"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:b7bd51222a09f3ad66a340710ae9c01a"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:8cb68dc6ad0365d44af24b254ef70844"] = true
L3_3["d0ec4b50a944b182fc10ff51f883ccf7:b31c0b82752ea0e2c48b8ce46e9263e5"] = true
L3_3["ce5f3254611a8c095a3d821d44539877:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["d0ec4b50a944b182fc10ff51f883ccf7:758945630046fd37070521b8544d1fe8"] = true
L3_3["8916410db85077a5460817142dcbc8de:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:394441ab65754e2207b1e1b457b3641d"] = true
L3_3["72a589da586844d7f0818ce684948eea:1af33e1657631357c73119488045302c"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:ccc514751b175866924439bdbb5bba34"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:beb7069ae409bccfed702c17ad004223"] = true
L3_3["1770c51ee209c73547f5e53e366b6152:46e8c907c5cc3cf4b4420e76da5b4dba"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:1af33e1657631357c73119488045302c"] = true
L3_3["51c64c77e60f3980eea90869b68c58a8:1af33e1657631357c73119488045302c"] = true
L3_3["d0ec4b50a944b182fc10ff51f883ccf7:f176ba63b4d68e576b5ba345bec2c7b7"] = true
L3_3["d0ec4b50a944b182fc10ff51f883ccf7:fd4bc6cea4877646ccd62f0792ec0b62"] = true
L3_3["8916410db85077a5460817142dcbc8de:fd4bc6cea4877646ccd62f0792ec0b62"] = true
L3_3["c35a61411ee5bdf666b4d64b05c29e64:ae4edc6faf64d08308082ad26be60767"] = true
L3_3["d0ec4b50a944b182fc10ff51f883ccf7:6d6b821affda5de6562d217770a7ead0"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:466556e923186364e82cbdb4cad8df2c"] = true
L3_3["72a589da586844d7f0818ce684948eea:649d6810e8392f63dc311eecb6b7098b"] = true
L3_3["d0ec4b50a944b182fc10ff51f883ccf7:84aaf6d03fc8c5bfb56d1d188735b268"] = true
L3_3["a0e9f5d64349fb13191bc781f81f42e1:098e26e2609212ac1bfac552fbe04127"] = true
if not L4_4 then
  return L4_4
end
L4_4.TlsJa3CHash = L0_0
L4_4.TlsJa3SHash = L1_1
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L4_4)
return mp.INFECTED
