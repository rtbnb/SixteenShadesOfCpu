/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2182(char*, char *);
IKI_DLLESPEC extern void execute_16(char*, char *);
IKI_DLLESPEC extern void execute_17(char*, char *);
IKI_DLLESPEC extern void execute_57(char*, char *);
IKI_DLLESPEC extern void execute_58(char*, char *);
IKI_DLLESPEC extern void execute_126(char*, char *);
IKI_DLLESPEC extern void execute_128(char*, char *);
IKI_DLLESPEC extern void execute_129(char*, char *);
IKI_DLLESPEC extern void execute_130(char*, char *);
IKI_DLLESPEC extern void execute_195(char*, char *);
IKI_DLLESPEC extern void execute_200(char*, char *);
IKI_DLLESPEC extern void execute_202(char*, char *);
IKI_DLLESPEC extern void execute_208(char*, char *);
IKI_DLLESPEC extern void execute_664(char*, char *);
IKI_DLLESPEC extern void execute_1133(char*, char *);
IKI_DLLESPEC extern void execute_1202(char*, char *);
IKI_DLLESPEC extern void execute_1271(char*, char *);
IKI_DLLESPEC extern void execute_1340(char*, char *);
IKI_DLLESPEC extern void execute_1409(char*, char *);
IKI_DLLESPEC extern void execute_1478(char*, char *);
IKI_DLLESPEC extern void execute_1547(char*, char *);
IKI_DLLESPEC extern void execute_1685(char*, char *);
IKI_DLLESPEC extern void execute_1754(char*, char *);
IKI_DLLESPEC extern void execute_1959(char*, char *);
IKI_DLLESPEC extern void execute_1978(char*, char *);
IKI_DLLESPEC extern void execute_1986(char*, char *);
IKI_DLLESPEC extern void execute_2178(char*, char *);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_501(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_759(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_766(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_773(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_780(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_787(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_794(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_801(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_808(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_815(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_829(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_836(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_843(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_850(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_857(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_864(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_871(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_878(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_885(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_892(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_899(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_906(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_913(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_920(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_927(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_934(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_941(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_948(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_955(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_962(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_969(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_976(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_983(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_990(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_997(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1004(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1011(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1018(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1025(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1032(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1039(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1046(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1053(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1060(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1067(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1074(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1081(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1088(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1095(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1102(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1109(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1116(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1123(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1130(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1137(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1144(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1151(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1158(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1165(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1172(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1179(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1186(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1193(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1200(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1207(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1214(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1221(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1228(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1235(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1242(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1249(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1256(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1263(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1270(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1277(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1284(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1291(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1298(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1305(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1312(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1319(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1326(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1333(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1340(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1347(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1354(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1361(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1368(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1375(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1382(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1389(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1396(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1403(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1410(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1417(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1424(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1431(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1438(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1445(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1452(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1459(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1466(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1473(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1480(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1487(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1494(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1501(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1508(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1515(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1522(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1529(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1536(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1543(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1550(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1557(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1564(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1571(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1578(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1585(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1592(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1599(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1606(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1613(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1620(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1627(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1634(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1641(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1648(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1655(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1662(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1669(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1676(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1683(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1690(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1697(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1704(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1711(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1718(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1725(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1732(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1739(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1746(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1753(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1760(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1767(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1774(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1781(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1788(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1795(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1802(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1809(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1816(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1823(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1830(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1837(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1844(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1851(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1858(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1865(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1872(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1879(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1886(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1893(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1900(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1907(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1914(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1921(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1928(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1935(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1942(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1949(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1956(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1963(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1970(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1977(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1984(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1991(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1998(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2005(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2012(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2019(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2026(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2033(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2040(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2047(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2054(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2061(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2068(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2075(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2082(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2089(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2096(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2103(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2110(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2117(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2124(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2131(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2138(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2145(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2152(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2159(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2166(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2173(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2180(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2187(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2194(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2201(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2208(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2215(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2222(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2229(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2236(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2243(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2250(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2257(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2264(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2271(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2278(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2285(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2292(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2299(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2306(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2313(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2320(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2327(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2334(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2341(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2348(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2355(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2362(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2369(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2376(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2383(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2390(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2397(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2404(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2411(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2418(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2425(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2432(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2439(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2446(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2453(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2460(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2467(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2474(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2481(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2488(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2495(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2502(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2509(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2516(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2523(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2530(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2537(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2544(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[285] = {(funcp)execute_2182, (funcp)execute_16, (funcp)execute_17, (funcp)execute_57, (funcp)execute_58, (funcp)execute_126, (funcp)execute_128, (funcp)execute_129, (funcp)execute_130, (funcp)execute_195, (funcp)execute_200, (funcp)execute_202, (funcp)execute_208, (funcp)execute_664, (funcp)execute_1133, (funcp)execute_1202, (funcp)execute_1271, (funcp)execute_1340, (funcp)execute_1409, (funcp)execute_1478, (funcp)execute_1547, (funcp)execute_1685, (funcp)execute_1754, (funcp)execute_1959, (funcp)execute_1978, (funcp)execute_1986, (funcp)execute_2178, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_501, (funcp)transaction_759, (funcp)transaction_766, (funcp)transaction_773, (funcp)transaction_780, (funcp)transaction_787, (funcp)transaction_794, (funcp)transaction_801, (funcp)transaction_808, (funcp)transaction_815, (funcp)transaction_822, (funcp)transaction_829, (funcp)transaction_836, (funcp)transaction_843, (funcp)transaction_850, (funcp)transaction_857, (funcp)transaction_864, (funcp)transaction_871, (funcp)transaction_878, (funcp)transaction_885, (funcp)transaction_892, (funcp)transaction_899, (funcp)transaction_906, (funcp)transaction_913, (funcp)transaction_920, (funcp)transaction_927, (funcp)transaction_934, (funcp)transaction_941, (funcp)transaction_948, (funcp)transaction_955, (funcp)transaction_962, (funcp)transaction_969, (funcp)transaction_976, (funcp)transaction_983, (funcp)transaction_990, (funcp)transaction_997, (funcp)transaction_1004, (funcp)transaction_1011, (funcp)transaction_1018, (funcp)transaction_1025, (funcp)transaction_1032, (funcp)transaction_1039, (funcp)transaction_1046, (funcp)transaction_1053, (funcp)transaction_1060, (funcp)transaction_1067, (funcp)transaction_1074, (funcp)transaction_1081, (funcp)transaction_1088, (funcp)transaction_1095, (funcp)transaction_1102, (funcp)transaction_1109, (funcp)transaction_1116, (funcp)transaction_1123, (funcp)transaction_1130, (funcp)transaction_1137, (funcp)transaction_1144, (funcp)transaction_1151, (funcp)transaction_1158, (funcp)transaction_1165, (funcp)transaction_1172, (funcp)transaction_1179, (funcp)transaction_1186, (funcp)transaction_1193, (funcp)transaction_1200, (funcp)transaction_1207, (funcp)transaction_1214, (funcp)transaction_1221, (funcp)transaction_1228, (funcp)transaction_1235, (funcp)transaction_1242, (funcp)transaction_1249, (funcp)transaction_1256, (funcp)transaction_1263, (funcp)transaction_1270, (funcp)transaction_1277, (funcp)transaction_1284, (funcp)transaction_1291, (funcp)transaction_1298, (funcp)transaction_1305, (funcp)transaction_1312, (funcp)transaction_1319, (funcp)transaction_1326, (funcp)transaction_1333, (funcp)transaction_1340, (funcp)transaction_1347, (funcp)transaction_1354, (funcp)transaction_1361, (funcp)transaction_1368, (funcp)transaction_1375, (funcp)transaction_1382, (funcp)transaction_1389, (funcp)transaction_1396, (funcp)transaction_1403, (funcp)transaction_1410, (funcp)transaction_1417, (funcp)transaction_1424, (funcp)transaction_1431, (funcp)transaction_1438, (funcp)transaction_1445, (funcp)transaction_1452, (funcp)transaction_1459, (funcp)transaction_1466, (funcp)transaction_1473, (funcp)transaction_1480, (funcp)transaction_1487, (funcp)transaction_1494, (funcp)transaction_1501, (funcp)transaction_1508, (funcp)transaction_1515, (funcp)transaction_1522, (funcp)transaction_1529, (funcp)transaction_1536, (funcp)transaction_1543, (funcp)transaction_1550, (funcp)transaction_1557, (funcp)transaction_1564, (funcp)transaction_1571, (funcp)transaction_1578, (funcp)transaction_1585, (funcp)transaction_1592, (funcp)transaction_1599, (funcp)transaction_1606, (funcp)transaction_1613, (funcp)transaction_1620, (funcp)transaction_1627, (funcp)transaction_1634, (funcp)transaction_1641, (funcp)transaction_1648, (funcp)transaction_1655, (funcp)transaction_1662, (funcp)transaction_1669, (funcp)transaction_1676, (funcp)transaction_1683, (funcp)transaction_1690, (funcp)transaction_1697, (funcp)transaction_1704, (funcp)transaction_1711, (funcp)transaction_1718, (funcp)transaction_1725, (funcp)transaction_1732, (funcp)transaction_1739, (funcp)transaction_1746, (funcp)transaction_1753, (funcp)transaction_1760, (funcp)transaction_1767, (funcp)transaction_1774, (funcp)transaction_1781, (funcp)transaction_1788, (funcp)transaction_1795, (funcp)transaction_1802, (funcp)transaction_1809, (funcp)transaction_1816, (funcp)transaction_1823, (funcp)transaction_1830, (funcp)transaction_1837, (funcp)transaction_1844, (funcp)transaction_1851, (funcp)transaction_1858, (funcp)transaction_1865, (funcp)transaction_1872, (funcp)transaction_1879, (funcp)transaction_1886, (funcp)transaction_1893, (funcp)transaction_1900, (funcp)transaction_1907, (funcp)transaction_1914, (funcp)transaction_1921, (funcp)transaction_1928, (funcp)transaction_1935, (funcp)transaction_1942, (funcp)transaction_1949, (funcp)transaction_1956, (funcp)transaction_1963, (funcp)transaction_1970, (funcp)transaction_1977, (funcp)transaction_1984, (funcp)transaction_1991, (funcp)transaction_1998, (funcp)transaction_2005, (funcp)transaction_2012, (funcp)transaction_2019, (funcp)transaction_2026, (funcp)transaction_2033, (funcp)transaction_2040, (funcp)transaction_2047, (funcp)transaction_2054, (funcp)transaction_2061, (funcp)transaction_2068, (funcp)transaction_2075, (funcp)transaction_2082, (funcp)transaction_2089, (funcp)transaction_2096, (funcp)transaction_2103, (funcp)transaction_2110, (funcp)transaction_2117, (funcp)transaction_2124, (funcp)transaction_2131, (funcp)transaction_2138, (funcp)transaction_2145, (funcp)transaction_2152, (funcp)transaction_2159, (funcp)transaction_2166, (funcp)transaction_2173, (funcp)transaction_2180, (funcp)transaction_2187, (funcp)transaction_2194, (funcp)transaction_2201, (funcp)transaction_2208, (funcp)transaction_2215, (funcp)transaction_2222, (funcp)transaction_2229, (funcp)transaction_2236, (funcp)transaction_2243, (funcp)transaction_2250, (funcp)transaction_2257, (funcp)transaction_2264, (funcp)transaction_2271, (funcp)transaction_2278, (funcp)transaction_2285, (funcp)transaction_2292, (funcp)transaction_2299, (funcp)transaction_2306, (funcp)transaction_2313, (funcp)transaction_2320, (funcp)transaction_2327, (funcp)transaction_2334, (funcp)transaction_2341, (funcp)transaction_2348, (funcp)transaction_2355, (funcp)transaction_2362, (funcp)transaction_2369, (funcp)transaction_2376, (funcp)transaction_2383, (funcp)transaction_2390, (funcp)transaction_2397, (funcp)transaction_2404, (funcp)transaction_2411, (funcp)transaction_2418, (funcp)transaction_2425, (funcp)transaction_2432, (funcp)transaction_2439, (funcp)transaction_2446, (funcp)transaction_2453, (funcp)transaction_2460, (funcp)transaction_2467, (funcp)transaction_2474, (funcp)transaction_2481, (funcp)transaction_2488, (funcp)transaction_2495, (funcp)transaction_2502, (funcp)transaction_2509, (funcp)transaction_2516, (funcp)transaction_2523, (funcp)transaction_2530, (funcp)transaction_2537, (funcp)transaction_2544};
const int NumRelocateId= 285;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/RegFileSim_func_synth/xsim.reloc",  (void **)funcTab, 285);
	iki_vhdl_file_variable_register(dp + 545528);
	iki_vhdl_file_variable_register(dp + 545584);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/RegFileSim_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/RegFileSim_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/RegFileSim_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/RegFileSim_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/RegFileSim_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
