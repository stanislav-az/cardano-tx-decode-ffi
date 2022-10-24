module Main where

import Cbor
import Foreign.C.String

main :: IO ()
main = do
  str <- newCString "84a60082825820b96e52fce203a0aba82b90e9a866946c132ef6c5cf85b76f3c2e03f60a810bf200825820b96e52fce203a0aba82b90e9a866946c132ef6c5cf85b76f3c2e03f60a810bf2010d81825820b96e52fce203a0aba82b90e9a866946c132ef6c5cf85b76f3c2e03f60a810bf2010182a300581d7012a633725e50f05a68c063bfc06b31bc4920c0e50aee03dd2a5383fb01821a00133418a1581c920e7944c05c44a710c8ba6397add3cf16fef0c4800f1c47e3ef5996a1554f7261636c652050726f746f636f6c20546f6b656e010282005820c2a1a95e5702c9b6296a13314039989563acb0199cefc2424d89a86790ae5dd8a20058390011b64dfcdddbe21f30c1ee5fc5c8c874b18c94d192c27488112fe0b88507d85d5a97f01022f706b55766692eb2e08b7aaff54951fc730f03011b0000000253d803e4021a000999ed0e82581cecf68f20c638a99be401488a499a773e451d7fea4fad5ae9858be8ed581cfc788d194092e3c4a095b3f943584e1d204adc0a70b2d36411832f260b58201ae75f19bad7716ef8c3b1be3420cb740bede48cf0b5a4bd51c890a94bf079eda400828258208624f974708677aad0eceda40a8417c2e4addfe32aa5bef84981d65ac1ebeb345840790a7f7a6bdd81fcf99ac82a3c68c2bd9af5521974a6d5c2129e8ba026a0366469d7658ec1ce2537a78857d51e99d070408bd418ccd19bbd82a575e1569a7d048258206eed81780cfe5844cbec1ef6d3b11a15a15c8c3307ceceb5b0d07f33eee1eb225840d227259f5033b939f35c24b96bb0169e870159bede567a56ee62508215e0f0f9adf9cccbfc95fa34d024956764076b3998210973753adee645b7b5eb937cc10b038159159c591599010000332332232323232323232323232323232323232322232322323223232533533300a3333573466e1cd55cea804240004664424660020060046464646666ae68cdc39aab9d5002480008cc8848cc00400c008cd4041d71aba15002375a6ae84d5d1280111931900f19ab9c01f01e01c135573ca00226ea8004d5d0a8041bad357426ae8940208c98c8068cd5ce00d80d00c1999ab9a3370ea0089001109100091999ab9a3370ea00a9000119091180100199a806919191999ab9a3370e6aae7540092000233221233001003002375c6ae854008dd69aba135744a004464c6403e66ae7008007c0744d55cf280089baa001357426aae79401c8c98c806ccd5ce00e00d80c80c1999ab9a3370e6aae754009200023322123300100300232323232323232323232323333573466e1cd55cea8052400046666666666444444444424666666666600201601401201000e00c00a00800600466a030464646666ae68cdc39aab9d5002480008cc8848cc00400c008c084d5d0a801180e9aba135744a004464c6405466ae700ac0a80a04d55cf280089baa00135742a01466a0300326ae854024ccd5406dd7280d1aba150083335501b75ca0346ae85401ccd4060084d5d0a80319a80c19aa8120113ad35742a00a6464646666ae68cdc39aab9d5002480008cc8848cc00400c008c8c8c8cccd5cd19b8735573aa004900011991091980080180119a813bad35742a00460506ae84d5d1280111931901719ab9c02f02e02c135573ca00226ea8004d5d0a8011919191999ab9a3370e6aae754009200023322123300100300233502775a6ae854008c0a0d5d09aba2500223263202e33573805e05c05826aae7940044dd50009aba135744a004464c6405466ae700ac0a80a04d55cf280089baa00135742a00866a030eb8d5d0a80199a80c19aa8123ae200135742a004603c6ae84d5d1280111931901319ab9c027026024135744a00226ae8940044d5d1280089aba25001135744a00226ae8940044d5d1280089aba25001135573ca00226ea8004d5d0a8011919191999ab9a3370ea0029003119091111802002980c9aba135573ca00646666ae68cdc3a8012400846424444600400a60366ae84d55cf280211999ab9a3370ea0069001119091111800802980b9aba135573ca00a46666ae68cdc3a8022400046424444600600a6eb8d5d09aab9e500623263202133573804404203e03c03a03826aae7540044dd50009aba135744a004464c6403466ae7006c06806040644c98c8064cd5ce24810350543500019135573ca00226ea80044d55cea80089baa001135573ca00226ea800448c88c008dd6000990009aa80a111999aab9f00125016233501530043574200460066ae880080448c8c8c8cccd5cd19b8735573aa00690001199911091998008020018011919191999ab9a3370e6aae7540092000233221233001003002301335742a00466a0180246ae84d5d1280111931900b19ab9c017016014135573ca00226ea8004d5d0a801999aa803bae500635742a00466a010eb8d5d09aba2500223263201233573802602402026ae8940044d55cf280089baa0011335500175ceb44488c88c008dd5800990009aa80911191999aab9f0022501523350143355013300635573aa004600a6aae794008c010d5d100180809aba100112232323333573466e1d4005200023212230020033005357426aae79400c8cccd5cd19b8750024800884880048c98c8040cd5ce00880800700689aab9d500113754002464646666ae68cdc39aab9d5002480008cc8848cc00400c008c014d5d0a8011bad357426ae8940088c98c8034cd5ce00700680589aab9e5001137540024646666ae68cdc39aab9d5001480008dd71aba135573ca004464c6401666ae7003002c0244dd500089119191999ab9a3370ea00290021091100091999ab9a3370ea00490011190911180180218031aba135573ca00846666ae68cdc3a801a400042444004464c6401c66ae7003c03803002c0284d55cea80089baa0012323333573466e1d40052002212200223333573466e1d40092000212200123263200a33573801601401000e26aae74dd5000919191919191999ab9a3370ea002900610911111100191999ab9a3370ea004900510911111100211999ab9a3370ea00690041199109111111198008048041bae35742a00a6eb4d5d09aba2500523333573466e1d40112006233221222222233002009008375c6ae85401cdd71aba135744a00e46666ae68cdc3a802a400846644244444446600c01201060186ae854024dd71aba135744a01246666ae68cdc3a8032400446424444444600e010601a6ae84d55cf280591999ab9a3370ea00e900011909111111180280418071aba135573ca018464c6402466ae7004c04804003c03803403002c0284d55cea80209aab9e5003135573ca00426aae7940044dd50009191919191999ab9a3370ea002900111999110911998008028020019bad35742a0086eb4d5d0a8019bad357426ae89400c8cccd5cd19b875002480008c8488c00800cc020d5d09aab9e500623263200b33573801801601201026aae75400c4d5d1280089aab9e500113754002464646666ae68cdc3a800a400446424460020066eb8d5d09aab9e500323333573466e1d400920002321223002003375c6ae84d55cf280211931900419ab9c009008006005135573aa00226ea800444888c8c8cccd5cd19b8735573aa0049000119aa80518031aba150023005357426ae8940088c98c8020cd5ce00480400309aab9e5001137540029309000a481035054310011221233001003002112200212212233001004003112323001001223300330020020013323322323322323232323232332232323232323232323232323232323232323232323232323233223232323232323232322222350042232323253350072323213232333553016120013501e501d200135039122330025335333016015301200d00310401335738921145363726970742076616c7565206368616e6765640003f330023500f22350062253353500422350042253353335302f1200103600400213301d003001104710441335738921184f7261636c652073657474696e6773206d6f646966696564000433300253353335530181200135020501f2333553019120013501d501f302f001350102235002220025006104013357389201155369676e6174757265206e6f7420616c6c6f7765640003f330025335333573466e214014d403c88d4008880040fc10041004cd5ce249154e6f7420656e6f756768207369676e6174757265730003f330025335333573466e1d4014cd54084c06048004c8cc0b800540f940181000fc41004cd5ce248122416c6c207369676e61746f726965732073686f756c642062652064697374696e63740003f3300253353335530181200135020501f30113500d22002500610401335738920125416c6c20636f6e747269627574696e67206e6f6465732073686f756c64207369676e2074780003f330025335333573466e1cd401088004c8c8c8c94cd4c8ccd5cd19b873370c00290022400008a088a006266e0ccdc019a981489000a800a80119a981489000a80099b81500248009200413353029120015001500213033303c003133706a0029002099aa811180c8900080099aa980e8900091a8009100080382001f8820099ab9c491234e6577206f7261636c652066656564206973206e6f74206d656469616e2076616c75650003f00135500522001355004220021335501c301312001002133553017120012350012200200113232333553013120013501b501a200135036122330025335333013012300f00a003103d1335738921145363726970742076616c7565206368616e6765640003c330025335333573466e1cd403088004d4010880040f40f040f44cd5ce24811a4f7261636c652070726963652066656564206d6f6469666965640003c330023500a225335330100023500f22002103f13357389201144f776e65722073686f756c64207369676e2074780003e001355002220013550012200213500522350022222222222533553353301700a00b2135001223500122233355302312001223500222235008223500522325335335005233500425335333573466e3c0080041581545400c415481548cd4010815494cd4ccd5cd19b8f002001056055150031055133505000a0091009153350032153350022133500223350022335002233500223304700200120582335002205823304700200122205822233500420582225335333573466e1c01800c16c16854cd4ccd5cd19b8700500205b05a133030004001105a105a105315335001210531053504700f132632031335738921024c660003a1302d4988c8854cd40044cd540c4d400c8894cd4004854cd54cd4ccd54c08c48005407c8d4004894cd4ccd5cd19b8f00200404e04d13504300315042009213504135001220011503f2323232153353333333574800846666ae68cdc39aab9d5004480008cccd55cfa8021282311999aab9f500425047233335573e6ae89401494cd4c8c8c8c8ccccccd5d200211999ab9a3370e6aae7540112000233335573ea0084a09e46666aae7d4010941408cccd55cf9aba250052533532333333357480024a0a64a0a6460a46eb00089414c9414c150d5d0a80390a99a98231aba15007213505412330010030021505215051250510520510502504e0452504d2504d2504d2504d04e135744a00226aae7940044dd50009aba15007215335303d35742a00e426a09624660020060042a0922a0904a09009209008e4a08a0784a0884a0884a0884a08808a420022a07426ae8940044d55cf280089baa0011503615035533532301100150021500213263203433573892012a536372697074206f757470757420646f6573206e6f7420686176652050726f746f636f6c20546f6b656e0003d22130324984d4004888008c8004d540e0894cd400440e0884d4008894cd4ccd5cd19b8f002350082200203d03c130070011300600332001355037225335001103722135002225335333573466e3c008d401c880040f00ec4ccd5cd19b87480080040f00ec4c01800c88d400888888888894cd4ccd54c04c48005403c94cd4ccd5cd19b8f00c00103c03b135031001150300032103c103a2350012235002222222222253353300e00a00b2135001223500122200213263202833573892011b43616e27742066696e642076616c69646174696f6e20696e70757400031223333500125024250242502423335530081200150042350012253355335333573466e3cd400888008d4010880080cc0c84ccd5cd19b87350022200135004220010330321032135028003150270031335010225335002210031001502022333573466e1c0080040b40b0888ccd54c01448004d403540308d400488ccd54c02048004d4041403c8d400488ccd40048cc0292000001223300b00200123300a00148000004cd54c028480048d400488cd54068008ccd40048cd54c038480048d400488cd54078008d5403c00400488ccd5540240800080048cd54c038480048d400488cd54078008d54038004004ccd55401006c008004444888ccd54c0144800540a0cd54c024480048d400488cd54064008d54028004ccd54c0144800488d4008894cd4ccd54c02048004d403140388d400488cc028008014018400c4cd40b001000d40a4004cd54c024480048d400488c8cd5406800cc004014c8004d540c0894cd40044d5402c00c884d4008894cd4cc03000802044888cc0080280104c01800c008c8004d540a488448894cd40044d403c00c884ccd4048014c010008ccd54c01c48004014010004c8004d540a088448894cd40044008884cc014008ccd54c01c480040140100044484888c00c0104484888c00401048cd402488ccd400c88008008004d400488004c8004d540908844894cd400454090884cd4094c010008cd54c01848004010004448cc004894cd400840944004088448cc004894cd40084004408c08848cd401488ccd400c88008008004d4004880044488cccd54008c8cd401888ccd401c00c004008d4010004cd4014888c00cc008004800488cdc0000a40040029000091a80091000891a800910010910919800801801190009aa80e11091299a999ab9a33710002900000f80f09a802a49035054360015335002135005490103505437002215335333573466e1c00d200002102010021335300612001001337020069001091931900419ab9c0010113200135501a221222533500215335001101e22101f2215335003101f2215335330070040021333530091200100700300110212333333357480024a01c4a01c4a01c46a01e6eb40089403803c8c98c8014cd5ce248140457861636c79206f6e6520736372697074206f75747075742073686f756c64206265206372656174656420666f72206e657874207363726970742073746174650000e112212330010030021326320023357389211d536372697074206f757470757420646174756d206e6f7420666f756e640000b498c8004d540508894cd40085404c8854cd4ccd4c01c4800401800800c4cc01400400c4cd4050008cc014004cd405000800c88ccd5cd19b8f002001014013320013550122212225335001101522153353300500200410181333530071200100500400132001355011225335001130023003500f2215335001100222130063007005320013550102253350011500e221533500110032213350113300700400230060013200135500f222533500210012215335003100422153335330130040021335011004330070030051335011002330070060011335011004330070030053200135500e2233335573e00246a00aa01a4a66a646666666ae90004940189401894018940188d401cdd70010039aba1002215335300435744006426a00e66a01c0040022a00a2a00800a2424460040062244002240026a0064440026a0044440046a00244400666460020024464246a642466600246a006444600600846a006444600400846a0064446002008246a60060086a0080020026004004244446660084a66a00226a00c24466004a014002442a66a00226a0102446600400a002442a666a6601a008004266600c004466a01800a002002266600e0046a0142446600400c002002266600c004466a01800a002002444a66a002266a01266a012006004600ca014442a666a6601a00a004266a01666a01600a0086010006266600e00466a01600a008002266a01666a01600a008601000644464a66a0042600293110a999a9980700300109998038011180319a80680380080089801a4c266600e0044600c66a01a00e002002466a01460066a0122446600400c002600e0042466a002a004a00622440042442446600200800644a66a666ae68cdc3801000802001889110018a99a999ab9a3371200400200800622444002224440042440042440022246460020024466006600400400266a24466a244660049111cfc788d194092e3c4a095b3f943584e1d204adc0a70b2d36411832f260033550044891c920e7944c05c44a710c8ba6397add3cf16fef0c4800f1c47e3ef5996004881154f7261636c652050726f746f636f6c20546f6b656e00221233001003002200111221233001003002112001010482d8799fd8799f9f581cecf68f20c638a99be401488a499a773e451d7fea4fad5ae9858be8ed581cfc788d194092e3c4a095b3f943584e1d204adc0a70b2d36411832f26581c1c973192db9a8654936e5abf70022199e87341d9aebc0485cdee4d1cff02ff1837ffd8799fd8799f9f581cecf68f20c638a99be401488a499a773e451d7fea4fad5ae9858be8ed581cfc788d194092e3c4a095b3f943584e1d204adc0a70b2d36411832f26581c1c973192db9a8654936e5abf70022199e87341d9aebc0485cdee4d1cff02ff1831ff0581840000d8799f9fd8799f581cecf68f20c638a99be401488a499a773e451d7fea4fad5ae9858be8ed1830ffd8799f581cfc788d194092e3c4a095b3f943584e1d204adc0a70b2d36411832f261832ffffff821a0023c1241a255f9907f5f6\0"
  out <- newCString $ replicate 16000 's'
  putStrLn "1"
  _ <- txCborToJson str out
  putStrLn "2"
  txJson <- peekCString out
  putStrLn "3"
  putStrLn txJson
