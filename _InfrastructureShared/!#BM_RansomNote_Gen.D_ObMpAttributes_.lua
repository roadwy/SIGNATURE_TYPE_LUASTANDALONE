local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 ~= nil and L0_0 >= 8192 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = "SCPT:ClnWordsCat1"
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.enum_mpattributesubstring
L3_3 = "SCPT:ClnWordsCat2"
L2_2 = L2_2(L3_3)
L3_3 = #L1_1
if not (L3_3 >= 1) then
  L3_3 = #L1_1
  L4_4 = #L2_2
  L3_3 = L3_3 + L4_4
elseif L3_3 >= 6 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.enum_mpattributesubstring
L4_4 = "SCPT:RansomNoteCat1"
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.enum_mpattributesubstring
L5_5 = "SCPT:RansomNoteCat2"
L4_4 = L4_4(L5_5)
L5_5 = mp
L5_5 = L5_5.enum_mpattributesubstring
L6_6 = "SCPT:RansomNoteCat3"
L5_5 = L5_5(L6_6)
L6_6 = mp
L6_6 = L6_6.enum_mpattributesubstring
L7_7 = "SCPT:RansomNoteCat4"
L6_6 = L6_6(L7_7)
L7_7 = #L3_3
L8_8 = #L4_4
L7_7 = L7_7 + L8_8
if L7_7 ~= 0 then
  L8_8 = #L5_5
  if L8_8 ~= 0 then
    L8_8 = #L6_6
  end
elseif L8_8 <= 1 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = mp
L8_8 = L8_8.HEADERPAGE_SZ
if L8_8 < 1596 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = tostring
L9_9 = headerpage
L8_8 = L8_8(L9_9)
L9_9 = {}
L9_9.infect = 500
L9_9.ransom = 500
L9_9.attack = 200
L9_9.corrupt = 200
L9_9.damage = 200
L9_9.locked = 200
L9_9.payment = 200
L9_9.purchase = 200
L9_9.recover = 200
L9_9.restore = 200
L9_9.secret = 200
L9_9.hacked = 100
L9_9["buy bitcoins"] = 500
L9_9["decrypt data"] = 500
L9_9["decrypt files"] = 500
L9_9["decryption tool"] = 500
L9_9["encrypted files"] = 500
L9_9["files encrypted"] = 500
L9_9.onion = 500
L9_9["recover files"] = 500
L9_9["restore files"] = 500
L9_9["aes-128"] = 200
L9_9.bitcoin = 200
L9_9["rsa-1024"] = 200
L9_9["rsa-2048"] = 200
L9_9["send decryption"] = 200
L9_9["tor browser"] = 200
L9_9["tor project"] = 200
L9_9.torbrowser = 200
L9_9["tor-browser"] = 200
L9_9.wallet = 200
L9_9["aes 128"] = 100
L9_9["aes 256"] = 100
L9_9["aes-256"] = 100
L9_9["airmail.cc"] = 100
L9_9["bitmessage.ch"] = 100
L9_9.cipher = 100
L9_9.cryptocurrencies = 100
L9_9["cryptography algorithm"] = 100
L9_9.cryptosystem = 100
L9_9.extension = 100
L9_9["firemail.cc"] = 100
L9_9.guarantee = 100
L9_9["important files"] = 100
L9_9["mail.ch"] = 100
L9_9["private key"] = 100
L9_9.protonmail = 100
L9_9["rsa 1024"] = 100
L9_9["rsa 2048"] = 100
L9_9["tuta.io"] = 100
L9_9.tutanota = 100
L9_9["return files"] = 50
L9_9["third part"] = 50
L9_9["third-part"] = 50
L9_9["write email"] = 50
L9_9.everything = 20
L9_9.security = 20
L9_9.weakness = 20
L9_9.decryption = 100
L9_9.encryption = 100
L9_9.overwrite = 100
L9_9.permanent = 100
L9_9.scam = 100
L9_9.unlock = 100
L9_9["valuable data"] = 100
L9_9.dropbox = 50
L9_9.encrypted = 50
L9_9.files = 50
L9_9.identification = 50
L9_9.important = 50
L9_9.impossib = 50
L9_9.irrevocably = 50
L9_9.lose = 50
L9_9.paying = 50
L9_9.personal = 50
L9_9.price = 50
L9_9.program = 50
L9_9.shutdown = 50
L9_9.strong = 50
L9_9.warning = 50
L9_9.website = 50
L9_9.assistance = 20
L9_9.attention = 20
L9_9.business = 20
L9_9.chat = 20
L9_9.computer = 20
L9_9.data = 20
L9_9.documents = 20
L9_9.download = 20
L9_9.folder = 20
L9_9.follow = 20
L9_9.free = 20
L9_9.hours = 20
L9_9.https = 20
L9_9.hxxps = 20
L9_9.information = 20
L9_9.install = 20
L9_9.instruction = 20
L9_9.mail = 20
L9_9.money = 20
L9_9.photos = 20
L9_9.possible = 20
L9_9.private = 20
L9_9.problem = 20
L9_9["return"] = 20
L9_9.send = 20
L9_9.server = 20
L9_9.software = 20
L9_9.sure = 20
L9_9.time = 20
L9_9.tool = 20
L9_9.unique = 20
L9_9.video = 20
L10_10 = 0
L11_11 = 0
for L15_15, L16_16 in L12_12(L13_13) do
  L17_17 = 0
  while true do
    L17_17 = string.find(L8_8, L15_15, L17_17 + 1)
    if L17_17 == nil then
      break
    end
    if 0 == 0 then
      L11_11 = L11_11 + 1
    end
    L10_10 = L10_10 + L16_16
    if 0 + 1 == 5 then
      break
    end
  end
end
if L10_10 >= 2500 and L11_11 >= 10 then
  L12_12(L13_13)
  return L12_12
end
return L12_12
