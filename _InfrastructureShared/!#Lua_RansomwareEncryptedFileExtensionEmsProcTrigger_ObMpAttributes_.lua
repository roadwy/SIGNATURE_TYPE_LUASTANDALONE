local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 16 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L5_5 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3))
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = #L1_1
if L2_2 > 256 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "%.([^.]+)$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "|#|$|04|0402|08ltwv|0b5wfb|0ff|0x0|0x009d8a|0x02|101|10262626|12345|1234554321|123456654321ee|1337br|15101973|19575757|1999|1exe|1payqd6xbcyt8incleaainp67mem631myi|1ss33ggur|1txt|2121212|22222|2288357|23111111|2501|2cxpcihgsvxb3|31332e30362e32303136_07_kjj1|31392e30362e32303136_11_lsbj1|325874|3301|33t|3ncrypt3d|4035|4124342353|45595731|490|491|492|5|506|515|57x8a5|5chch9|5vypsa|6092578|610101|6101010|626|6333|666|6biioz|6jcxxd|6kivjp|70327876|707|725|725863|726|7521|777|7777|77887788|77887788ee|7z[exten]|7zc|8787788|888|911|921537|[onion33544@india,com]-4chan|_crypt|a1crypt|a9v9ahu4|aaa|aaaaaa|abc|acrypt|adam|aes|aesir|agu1237|al27w9|alcatraz|aleta|allcry|aloxadqs|ambrosia|amnesia|android|angleware|antidot|anubi|arena|asasin|astra|au1crypt|ax23g8|azer|b081|b813a23|badnews|bael|bcrypt|be|beep|birbb|bl9c98vcvv|blcrypt|blind|block|block_file12|blockage|blocked|blocked2|blocked23|blocked24|blocked3|blocked6|blocked9|blocking|blow|blscrypt|bmp[exten]|bmpc|bmpdxxd|boffkaq|bonum|boss20122012|breaking_bad|brickr|brickrtest|brt92|bs7912|btc|btcware|bubble|buyav-bomj|byebye=)|cainxpii|ccc|ccrpt|cdrpt|cdsi|cefr|cerber|cerber2|cerber3|cerber6|cerberv5|cesar|cezar|ch|cherry|chiterlol|chora|ck|cke|cloud|clr-m583-a|cnc|co17h8|cod3r_zh|coded|coderksu@gmail_com_id372|coderksu@gmail_com_id381|coderksu@gmail_com_id392|com!!|com#id#1496984796|com#id#1500450698|com]|com_|com_319|com_321|com_6fce558fbf5a17532739a205697706d5|com_am104|com_bmn|com_de84|com_de91|com_fg119|com_fg132|com_fg135|com_fg160|com_fg164|com_fg172|com_fg196|com_fg80|com_flea|com_green|com_gsm102|com_hand|com_hex15|com_hex51|com_hex52|com_iq275|com_iq283|com_iq300|com_joy|com_lot3015|com_n5|com_pa1|com_pa11|com_pa18|com_pa20|com_rec|com_self|com_xe90|com_xe97|com_xo101|com_xo104|com_xo115|com_xo137|com_xq109|com_xq115|com_xq119|com_za163|com_za706|com_za947|com_zq501|com}bit|conficker|cpt0202|cpxjf5iuk5|cr|cr020801|cr1pt3d|critical|crjoker|crpt|crptd|crpttest|crrrt|crwdata|cry|cryforfun|cryl|crypt|crypt_damarles@airmail_cc|crypt_fereangos@airmail_cc|crypt_sorayaclarkyo@mail_com|crypta|cryptall|cryptch|crypted|crypted!|crypted000007|crypted_monkserenen@tvstar_com|crypto|cryptobyte|cryptolocker|cryptolocker_191usdactivation|crypton|cryptoshield|cryptoshield.|cryptoteslawalltorent2015locker|cryptotorlocker2015|cryptotorlocker2015!|crysis|ct|ctb2|ctbl|cyber splitter vbs|cybercrime|cybersecurity|cybersplitterandsaherblueeagle|cym|cyron|d2550a49bf52dfc23f2c013c5|da28c8|da_vinci_code|dafile|dcry|dctddle|de$$tr0y|decrypt|decrypt-id-63100001|decrypt-id-63100222|decrypt-id-63100927|decrypt-id-63101089|decrypt2017|dertcrypt|deus|devil|dharma|diablo6|die|dix7er|doc_encrypted|docc|docx[exten]|docx_encrypted|docxc|doghousepower|donald|dontdelete|duhust|dulet|ebay|ecc|ecofile|ej55nf|elmersglue|emmaware|empty|en|enc|enciphered|encipheredhgtyt|encoddiro|encoded|encr|encrypt|encrypted|encrypted!|encrypted!!!|encryptedrsa|enigma|enjey|epic|error|error-id-63100778(4btc)protect_and_security@tutamail.com|error66733200124|eva|exolocked|exte|exx|ezxzt|f41o1|fantom|fatalerror|fdp|feelme|fghcrypt|fholdemup|filock|finished|fioahfkajhf|firecrypt|fishing|fixi|flat|foste|fr26f9|frogo|frs|frtrss|fuck|fucked|fucking|fucking123|fuckyounooblox!|fullhause|fun|fwkzpje|gangbang|gg|ghost|gif[exten]|gifdxxd|glad|glade|globe|gommemode|goro|gotham|gp-code|gpcode|gpcodersa1024|graf|granit|granny|grt|gryphon|gu2p10|gui|h3ll|hack|hacked|hacker|haha|haiz|happ|happydayzz|harzhuangzi|haters|havoccrypt|hcked|hdk|him0m|hncrypt|ho20i9|htjobd|huecrypt|ig6582155|igrddle|ihgrfr|iimddle|illnest|imme|infileshop@gmail_com_id42|infinite|infocontrol|io|isis|jaff|james|jeepers|jey|jezroz|jholdemup|jigsaw|jjholdemup|jm|jmhqzzg|joxitpwnd|jpg[exten]|jpgc|jpgdxxd|jpgqczxezb|jytjgg|k11p|ka5mic|kaaapec|kamaron|kamilfo|keepcalm|keepme|keklock|key10|key231|key29|keyz|kiaedle|kilit|killedxxx|killer|kirked|kis|kk|kk25q8|kkk|kmbgdftfgdlf|kntl|kozel@qq_com|krzysware|kukaracha|kv29s9|l0cked|lacky|lambda_l0cked|legally|lego|lesli|letedle|license|lightning|lmt|locked|locked!|locked-5vp|locked-70u|locked-axv|locked-jao|locked-tjo|locked_file|lockednikampret|lockout|locky|lol!|lollock|lololo|longbow|loptr|loveyouisreal|lukitus|magic_software_syndicate|makb|maks|malew|malki|mamba|master|maxicrypt|maxsteelsaherblueeagle|mayday|mb|mcpces|mehrunes|merry|merry1|mexon1|micro|microsoft|mixi|mkbrgb|mmnm|mole|mole01|mole02|mole03|mordor|mort|mp3[exten]|msg23|mtk118|mvs6gt|mychemicalromance4ever|mz2493514|n0tijv|needdecrypt|needkey|needkeys|net]|net]malew|net_120olimp|net_125|net_125olimp|net_127olimp|net_128|net_132|net_132olimp|net_138|net_157|net_160|net_164|net_260|net_261|net_441|net_526|net_825|net_859|nigga|nj9gpmw8|nlusud|no_more_ransom|node0|nopasaran|norton|notepad|np27f9|npqxijor|ns2psfmp|nuclear|null|numberdot|nvsn1lqg|nw7gmkm4|nwwzflxc|nzmr|nzruovb9|oacus8va|ocean|ocswkwf3|odin|oewbdle|ofmwwv|ogne0h|ogonia|ogre|ohureutw|oiubx4rv|okokokokok|ol39kzwl|oldbat|oled|oni|onion|onyon|oops|openme|oplata@qq_com|orqc|osiris|otr|owl|oxar|oxr|p1crypt|pabluk300crypt!|pablukcrypt|padcrypt|paradise|paxynok|pay_for_decrypte|paybtcs|paycyka|payday|paym|paymts|payrms|pdf_encrypted|pdfqczxezb|pdydsfwk|pec|pedo|perseus|petya|pf8emu|phji1y|pholdemup|pirate|pizdec|pizdosik|pizza|pjsjbzsy|plin|png[exten]|pngc|pnr|pornhub|porno|poshcoder|pptx[exten]|pqn2eith|privat66|pscrypt|ptmbcfhc|ptzuaywn|pulet|pure|pwn|pwn3d|pzpxcle|qcbppy6k|qcmswe3v|qcz43efl|qfpf59kt|qgdqxcbl|qjfxoz|qjggwmdq|qqahivvk|qwqd|qym|r4bb0l0ck|r5a|rack|rameui91|ranranranran|ransom|ransomcrypt|razer|rc63m9|rdmk|readme|readme_txt|reagan|reddeath|rekt|renamer|revenge|rfygvnf8|ridt64vm|rmcm1|rokku|rose|rrgvovzw|rsa-1024|rsa1024|rscl|rtf[exten]|ru|ru]|rumblegoodboy|ru}|ru}lock|rwg|rwzycle|s1crypt|s4lyg27r|s8o8fpop|sage|saher blue eagle|scarab|scary|schwarz|scl|scorp|scorpionlocker|sea|senrus17|serpent|servercod|sevendays|sex|sex5|sf6sgsoj|sgf9s5ap|shark|shinigami|shit|sifreli|silent|skaype agu1237|skeetles|skunk|sn19u9|son|sorry|sorrydec|sos|spark|spectre|spg|sqj|st28j9|stop|stoppirates|strip4you|strongfiles|suiside|susaninofficial|svdmsnxc|svn|sweety|symbiom_locked|synapse|t7bt3wtu|tar[exten]|tarot|tdelf|tdgijqx|tego|telka|tesla|test|tester|tfjjz7mg|thatmoment|theend|theva|thisfileisencrypted|thismsg|tholdemup|thor|thpa72q4|tknhjbog|tm9cvd6h|top#id#1499760822|top#id#1501079548|toxcrypt|treasure|troy|trus|ts22k9|ttny71zp|ttvdduy|tulya|txtqczxezb|txtz|txx|tyebaniylox|u9jgcatb|u9xsz99a|uavzcle|ucdfyzgv|ujwvayp7|uloz|uqrrvqay|us|usxtval9|uwy4kcyn|vape|vault|vazonez|vcrypt1|vdul|venusf|venuslf|venuslp|venusp|verybad|vi87fahy|via|viki|vindows|viper1|virginlock|virginprotection|virus|viva|vl|vlagalishe|vscrypt|vvnhwxaw|vvv|vxoabxpu|vya|vzlom|w3hr3ncc|w7qhqcbj|waitingforpass|wamarlocked|wanna|wannacry|wcry|wcryt|wctkcle|wd7sqgfr|wfezsxyd|whatthefuck|whdekocg|whos|windows|wlu|wm1tqqhq|wmguxbbn|wncry|wncryt|wndie|wnry|work|worm|wpofg3p4|wtdi|wu6ztoxy|www|wyvern|wyvofwc8|wz4rqgsk|x2hzqz8yktjyeks6oiz7czqq|x3m|x3mjqulz|xaxax0x0|xcrypt25|xdata|xdes|xdsjatgq|xfile|xholdemup|xiaoba1|xiaoba2|xiaoba4|xls_encrypted|xlsb_encrypted|xlsbc|xlsc|xlsx_encrypted|xlsxc|xm9jquzh|xpjg6res|xqbfdle|xqwnff7a|xtbl|xvrptbhn|xxdwjcjq|xxholdemup|y1i3irzw|y4lipmbu|yaps|ygcrypt|ykcol|yl|ynhlv1|your_files_are_loc|youransom|ypqyyhk|ysp|ytbl|yuxi|yyto|zasifrovano|zasifrovano zaplat 3000kc!!!|zayka|zcrypt|zencrypted|zepto|zered|zholdemup|zilla|zipc|zuzya|zzz|zzzzz|~|~xdata~|"
L5_5 = L3_3
L4_4 = L3_3.find
L4_4 = L4_4(L5_5, "|" .. L2_2 .. "|", 1, true)
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_PROCESS_ID
L4_4 = L4_4(L5_5)
L5_5 = string
L5_5 = L5_5.format
L5_5 = L5_5("pid:%d\000", L4_4)
mp.TriggerScanResource("process\000", L5_5)
mp.TriggerScanResource("ems\000", L5_5)
return mp.CLEAN
