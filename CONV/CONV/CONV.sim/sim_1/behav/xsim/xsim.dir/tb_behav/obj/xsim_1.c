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
IKI_DLLESPEC extern void execute_324(char*, char *);
IKI_DLLESPEC extern void execute_325(char*, char *);
IKI_DLLESPEC extern void execute_5917(char*, char *);
IKI_DLLESPEC extern void execute_5916(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_394(char*, char *);
IKI_DLLESPEC extern void execute_395(char*, char *);
IKI_DLLESPEC extern void execute_396(char*, char *);
IKI_DLLESPEC extern void execute_446(char*, char *);
IKI_DLLESPEC extern void execute_447(char*, char *);
IKI_DLLESPEC extern void execute_448(char*, char *);
IKI_DLLESPEC extern void execute_498(char*, char *);
IKI_DLLESPEC extern void execute_499(char*, char *);
IKI_DLLESPEC extern void execute_500(char*, char *);
IKI_DLLESPEC extern void execute_550(char*, char *);
IKI_DLLESPEC extern void execute_551(char*, char *);
IKI_DLLESPEC extern void execute_552(char*, char *);
IKI_DLLESPEC extern void execute_602(char*, char *);
IKI_DLLESPEC extern void execute_603(char*, char *);
IKI_DLLESPEC extern void execute_604(char*, char *);
IKI_DLLESPEC extern void execute_654(char*, char *);
IKI_DLLESPEC extern void execute_655(char*, char *);
IKI_DLLESPEC extern void execute_656(char*, char *);
IKI_DLLESPEC extern void execute_1054(char*, char *);
IKI_DLLESPEC extern void execute_1055(char*, char *);
IKI_DLLESPEC extern void execute_1056(char*, char *);
IKI_DLLESPEC extern void execute_1358(char*, char *);
IKI_DLLESPEC extern void execute_1359(char*, char *);
IKI_DLLESPEC extern void execute_1360(char*, char *);
IKI_DLLESPEC extern void execute_1662(char*, char *);
IKI_DLLESPEC extern void execute_1663(char*, char *);
IKI_DLLESPEC extern void execute_1664(char*, char *);
IKI_DLLESPEC extern void execute_1966(char*, char *);
IKI_DLLESPEC extern void execute_1967(char*, char *);
IKI_DLLESPEC extern void execute_1968(char*, char *);
IKI_DLLESPEC extern void execute_2270(char*, char *);
IKI_DLLESPEC extern void execute_2271(char*, char *);
IKI_DLLESPEC extern void execute_2272(char*, char *);
IKI_DLLESPEC extern void execute_2574(char*, char *);
IKI_DLLESPEC extern void execute_2575(char*, char *);
IKI_DLLESPEC extern void execute_2576(char*, char *);
IKI_DLLESPEC extern void execute_2878(char*, char *);
IKI_DLLESPEC extern void execute_2879(char*, char *);
IKI_DLLESPEC extern void execute_2880(char*, char *);
IKI_DLLESPEC extern void execute_3182(char*, char *);
IKI_DLLESPEC extern void execute_3183(char*, char *);
IKI_DLLESPEC extern void execute_3184(char*, char *);
IKI_DLLESPEC extern void execute_3486(char*, char *);
IKI_DLLESPEC extern void execute_3487(char*, char *);
IKI_DLLESPEC extern void execute_3488(char*, char *);
IKI_DLLESPEC extern void execute_3790(char*, char *);
IKI_DLLESPEC extern void execute_3791(char*, char *);
IKI_DLLESPEC extern void execute_3792(char*, char *);
IKI_DLLESPEC extern void execute_4094(char*, char *);
IKI_DLLESPEC extern void execute_4095(char*, char *);
IKI_DLLESPEC extern void execute_4096(char*, char *);
IKI_DLLESPEC extern void execute_4398(char*, char *);
IKI_DLLESPEC extern void execute_4399(char*, char *);
IKI_DLLESPEC extern void execute_4400(char*, char *);
IKI_DLLESPEC extern void execute_4702(char*, char *);
IKI_DLLESPEC extern void execute_4703(char*, char *);
IKI_DLLESPEC extern void execute_4704(char*, char *);
IKI_DLLESPEC extern void execute_5006(char*, char *);
IKI_DLLESPEC extern void execute_5007(char*, char *);
IKI_DLLESPEC extern void execute_5008(char*, char *);
IKI_DLLESPEC extern void execute_5310(char*, char *);
IKI_DLLESPEC extern void execute_5311(char*, char *);
IKI_DLLESPEC extern void execute_5312(char*, char *);
IKI_DLLESPEC extern void execute_5614(char*, char *);
IKI_DLLESPEC extern void execute_5615(char*, char *);
IKI_DLLESPEC extern void execute_5616(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_5618(char*, char *);
IKI_DLLESPEC extern void execute_5619(char*, char *);
IKI_DLLESPEC extern void execute_5620(char*, char *);
IKI_DLLESPEC extern void execute_5621(char*, char *);
IKI_DLLESPEC extern void execute_5622(char*, char *);
IKI_DLLESPEC extern void execute_5623(char*, char *);
IKI_DLLESPEC extern void execute_5624(char*, char *);
IKI_DLLESPEC extern void execute_5625(char*, char *);
IKI_DLLESPEC extern void execute_5626(char*, char *);
IKI_DLLESPEC extern void execute_5627(char*, char *);
IKI_DLLESPEC extern void execute_5628(char*, char *);
IKI_DLLESPEC extern void execute_5629(char*, char *);
IKI_DLLESPEC extern void execute_5630(char*, char *);
IKI_DLLESPEC extern void execute_5631(char*, char *);
IKI_DLLESPEC extern void execute_5632(char*, char *);
IKI_DLLESPEC extern void execute_5633(char*, char *);
IKI_DLLESPEC extern void execute_5634(char*, char *);
IKI_DLLESPEC extern void execute_5635(char*, char *);
IKI_DLLESPEC extern void execute_5636(char*, char *);
IKI_DLLESPEC extern void execute_5637(char*, char *);
IKI_DLLESPEC extern void execute_5638(char*, char *);
IKI_DLLESPEC extern void execute_5639(char*, char *);
IKI_DLLESPEC extern void execute_5640(char*, char *);
IKI_DLLESPEC extern void execute_5641(char*, char *);
IKI_DLLESPEC extern void execute_5642(char*, char *);
IKI_DLLESPEC extern void execute_5643(char*, char *);
IKI_DLLESPEC extern void execute_5644(char*, char *);
IKI_DLLESPEC extern void execute_5645(char*, char *);
IKI_DLLESPEC extern void execute_5646(char*, char *);
IKI_DLLESPEC extern void execute_5647(char*, char *);
IKI_DLLESPEC extern void execute_5648(char*, char *);
IKI_DLLESPEC extern void execute_5649(char*, char *);
IKI_DLLESPEC extern void execute_5650(char*, char *);
IKI_DLLESPEC extern void execute_5651(char*, char *);
IKI_DLLESPEC extern void execute_5652(char*, char *);
IKI_DLLESPEC extern void execute_5653(char*, char *);
IKI_DLLESPEC extern void execute_5654(char*, char *);
IKI_DLLESPEC extern void execute_5655(char*, char *);
IKI_DLLESPEC extern void execute_5656(char*, char *);
IKI_DLLESPEC extern void execute_5657(char*, char *);
IKI_DLLESPEC extern void execute_5658(char*, char *);
IKI_DLLESPEC extern void execute_5659(char*, char *);
IKI_DLLESPEC extern void execute_5660(char*, char *);
IKI_DLLESPEC extern void execute_5661(char*, char *);
IKI_DLLESPEC extern void execute_5662(char*, char *);
IKI_DLLESPEC extern void execute_5663(char*, char *);
IKI_DLLESPEC extern void execute_5664(char*, char *);
IKI_DLLESPEC extern void execute_5665(char*, char *);
IKI_DLLESPEC extern void execute_5666(char*, char *);
IKI_DLLESPEC extern void execute_5667(char*, char *);
IKI_DLLESPEC extern void execute_5668(char*, char *);
IKI_DLLESPEC extern void execute_5669(char*, char *);
IKI_DLLESPEC extern void execute_5670(char*, char *);
IKI_DLLESPEC extern void execute_5671(char*, char *);
IKI_DLLESPEC extern void execute_5672(char*, char *);
IKI_DLLESPEC extern void execute_5673(char*, char *);
IKI_DLLESPEC extern void execute_5674(char*, char *);
IKI_DLLESPEC extern void execute_5675(char*, char *);
IKI_DLLESPEC extern void execute_5676(char*, char *);
IKI_DLLESPEC extern void execute_5677(char*, char *);
IKI_DLLESPEC extern void execute_5678(char*, char *);
IKI_DLLESPEC extern void execute_5679(char*, char *);
IKI_DLLESPEC extern void execute_5680(char*, char *);
IKI_DLLESPEC extern void execute_5681(char*, char *);
IKI_DLLESPEC extern void execute_5682(char*, char *);
IKI_DLLESPEC extern void execute_5683(char*, char *);
IKI_DLLESPEC extern void execute_5684(char*, char *);
IKI_DLLESPEC extern void execute_5685(char*, char *);
IKI_DLLESPEC extern void execute_5686(char*, char *);
IKI_DLLESPEC extern void execute_5687(char*, char *);
IKI_DLLESPEC extern void execute_5688(char*, char *);
IKI_DLLESPEC extern void execute_5689(char*, char *);
IKI_DLLESPEC extern void execute_5690(char*, char *);
IKI_DLLESPEC extern void execute_5691(char*, char *);
IKI_DLLESPEC extern void execute_5692(char*, char *);
IKI_DLLESPEC extern void execute_5693(char*, char *);
IKI_DLLESPEC extern void execute_5694(char*, char *);
IKI_DLLESPEC extern void execute_5695(char*, char *);
IKI_DLLESPEC extern void execute_5696(char*, char *);
IKI_DLLESPEC extern void execute_5697(char*, char *);
IKI_DLLESPEC extern void execute_5698(char*, char *);
IKI_DLLESPEC extern void execute_5699(char*, char *);
IKI_DLLESPEC extern void execute_5700(char*, char *);
IKI_DLLESPEC extern void execute_5701(char*, char *);
IKI_DLLESPEC extern void execute_5702(char*, char *);
IKI_DLLESPEC extern void execute_5703(char*, char *);
IKI_DLLESPEC extern void execute_5704(char*, char *);
IKI_DLLESPEC extern void execute_5705(char*, char *);
IKI_DLLESPEC extern void execute_5706(char*, char *);
IKI_DLLESPEC extern void execute_5707(char*, char *);
IKI_DLLESPEC extern void execute_5708(char*, char *);
IKI_DLLESPEC extern void execute_5709(char*, char *);
IKI_DLLESPEC extern void execute_5710(char*, char *);
IKI_DLLESPEC extern void execute_5711(char*, char *);
IKI_DLLESPEC extern void execute_5712(char*, char *);
IKI_DLLESPEC extern void execute_5713(char*, char *);
IKI_DLLESPEC extern void execute_5714(char*, char *);
IKI_DLLESPEC extern void execute_5715(char*, char *);
IKI_DLLESPEC extern void execute_5716(char*, char *);
IKI_DLLESPEC extern void execute_5717(char*, char *);
IKI_DLLESPEC extern void execute_5718(char*, char *);
IKI_DLLESPEC extern void execute_5719(char*, char *);
IKI_DLLESPEC extern void execute_5720(char*, char *);
IKI_DLLESPEC extern void execute_5721(char*, char *);
IKI_DLLESPEC extern void execute_5722(char*, char *);
IKI_DLLESPEC extern void execute_5723(char*, char *);
IKI_DLLESPEC extern void execute_5724(char*, char *);
IKI_DLLESPEC extern void execute_5725(char*, char *);
IKI_DLLESPEC extern void execute_5726(char*, char *);
IKI_DLLESPEC extern void execute_5727(char*, char *);
IKI_DLLESPEC extern void execute_5728(char*, char *);
IKI_DLLESPEC extern void execute_5729(char*, char *);
IKI_DLLESPEC extern void execute_5730(char*, char *);
IKI_DLLESPEC extern void execute_5731(char*, char *);
IKI_DLLESPEC extern void execute_5732(char*, char *);
IKI_DLLESPEC extern void execute_5733(char*, char *);
IKI_DLLESPEC extern void execute_5734(char*, char *);
IKI_DLLESPEC extern void execute_5735(char*, char *);
IKI_DLLESPEC extern void execute_5736(char*, char *);
IKI_DLLESPEC extern void execute_5737(char*, char *);
IKI_DLLESPEC extern void execute_5738(char*, char *);
IKI_DLLESPEC extern void execute_5739(char*, char *);
IKI_DLLESPEC extern void execute_5740(char*, char *);
IKI_DLLESPEC extern void execute_5741(char*, char *);
IKI_DLLESPEC extern void execute_5742(char*, char *);
IKI_DLLESPEC extern void execute_5743(char*, char *);
IKI_DLLESPEC extern void execute_5744(char*, char *);
IKI_DLLESPEC extern void execute_5745(char*, char *);
IKI_DLLESPEC extern void execute_5746(char*, char *);
IKI_DLLESPEC extern void execute_5747(char*, char *);
IKI_DLLESPEC extern void execute_5748(char*, char *);
IKI_DLLESPEC extern void execute_5749(char*, char *);
IKI_DLLESPEC extern void execute_5750(char*, char *);
IKI_DLLESPEC extern void execute_5751(char*, char *);
IKI_DLLESPEC extern void execute_5752(char*, char *);
IKI_DLLESPEC extern void execute_5753(char*, char *);
IKI_DLLESPEC extern void execute_5754(char*, char *);
IKI_DLLESPEC extern void execute_5755(char*, char *);
IKI_DLLESPEC extern void execute_5756(char*, char *);
IKI_DLLESPEC extern void execute_5757(char*, char *);
IKI_DLLESPEC extern void execute_5758(char*, char *);
IKI_DLLESPEC extern void execute_5759(char*, char *);
IKI_DLLESPEC extern void execute_5760(char*, char *);
IKI_DLLESPEC extern void execute_5761(char*, char *);
IKI_DLLESPEC extern void execute_5762(char*, char *);
IKI_DLLESPEC extern void execute_5763(char*, char *);
IKI_DLLESPEC extern void execute_5764(char*, char *);
IKI_DLLESPEC extern void execute_5765(char*, char *);
IKI_DLLESPEC extern void execute_5766(char*, char *);
IKI_DLLESPEC extern void execute_5767(char*, char *);
IKI_DLLESPEC extern void execute_5768(char*, char *);
IKI_DLLESPEC extern void execute_5769(char*, char *);
IKI_DLLESPEC extern void execute_5770(char*, char *);
IKI_DLLESPEC extern void execute_5771(char*, char *);
IKI_DLLESPEC extern void execute_5772(char*, char *);
IKI_DLLESPEC extern void execute_5773(char*, char *);
IKI_DLLESPEC extern void execute_5774(char*, char *);
IKI_DLLESPEC extern void execute_5775(char*, char *);
IKI_DLLESPEC extern void execute_5776(char*, char *);
IKI_DLLESPEC extern void execute_5777(char*, char *);
IKI_DLLESPEC extern void execute_5778(char*, char *);
IKI_DLLESPEC extern void execute_5779(char*, char *);
IKI_DLLESPEC extern void execute_5780(char*, char *);
IKI_DLLESPEC extern void execute_5781(char*, char *);
IKI_DLLESPEC extern void execute_5782(char*, char *);
IKI_DLLESPEC extern void execute_5783(char*, char *);
IKI_DLLESPEC extern void execute_5784(char*, char *);
IKI_DLLESPEC extern void execute_5785(char*, char *);
IKI_DLLESPEC extern void execute_5786(char*, char *);
IKI_DLLESPEC extern void execute_5787(char*, char *);
IKI_DLLESPEC extern void execute_5788(char*, char *);
IKI_DLLESPEC extern void execute_5789(char*, char *);
IKI_DLLESPEC extern void execute_5790(char*, char *);
IKI_DLLESPEC extern void execute_5791(char*, char *);
IKI_DLLESPEC extern void execute_5792(char*, char *);
IKI_DLLESPEC extern void execute_5793(char*, char *);
IKI_DLLESPEC extern void execute_5794(char*, char *);
IKI_DLLESPEC extern void execute_5795(char*, char *);
IKI_DLLESPEC extern void execute_5796(char*, char *);
IKI_DLLESPEC extern void execute_5797(char*, char *);
IKI_DLLESPEC extern void execute_5798(char*, char *);
IKI_DLLESPEC extern void execute_5799(char*, char *);
IKI_DLLESPEC extern void execute_5800(char*, char *);
IKI_DLLESPEC extern void execute_5801(char*, char *);
IKI_DLLESPEC extern void execute_5802(char*, char *);
IKI_DLLESPEC extern void execute_5803(char*, char *);
IKI_DLLESPEC extern void execute_5804(char*, char *);
IKI_DLLESPEC extern void execute_5805(char*, char *);
IKI_DLLESPEC extern void execute_5806(char*, char *);
IKI_DLLESPEC extern void execute_5807(char*, char *);
IKI_DLLESPEC extern void execute_5808(char*, char *);
IKI_DLLESPEC extern void execute_5809(char*, char *);
IKI_DLLESPEC extern void execute_5810(char*, char *);
IKI_DLLESPEC extern void execute_5811(char*, char *);
IKI_DLLESPEC extern void execute_5812(char*, char *);
IKI_DLLESPEC extern void execute_5813(char*, char *);
IKI_DLLESPEC extern void execute_5814(char*, char *);
IKI_DLLESPEC extern void execute_5815(char*, char *);
IKI_DLLESPEC extern void execute_5816(char*, char *);
IKI_DLLESPEC extern void execute_5817(char*, char *);
IKI_DLLESPEC extern void execute_5818(char*, char *);
IKI_DLLESPEC extern void execute_5819(char*, char *);
IKI_DLLESPEC extern void execute_5820(char*, char *);
IKI_DLLESPEC extern void execute_5821(char*, char *);
IKI_DLLESPEC extern void execute_5822(char*, char *);
IKI_DLLESPEC extern void execute_5823(char*, char *);
IKI_DLLESPEC extern void execute_5824(char*, char *);
IKI_DLLESPEC extern void execute_5825(char*, char *);
IKI_DLLESPEC extern void execute_5826(char*, char *);
IKI_DLLESPEC extern void execute_5827(char*, char *);
IKI_DLLESPEC extern void execute_5828(char*, char *);
IKI_DLLESPEC extern void execute_5829(char*, char *);
IKI_DLLESPEC extern void execute_5830(char*, char *);
IKI_DLLESPEC extern void execute_5831(char*, char *);
IKI_DLLESPEC extern void execute_5832(char*, char *);
IKI_DLLESPEC extern void execute_5833(char*, char *);
IKI_DLLESPEC extern void execute_5834(char*, char *);
IKI_DLLESPEC extern void execute_5835(char*, char *);
IKI_DLLESPEC extern void execute_5836(char*, char *);
IKI_DLLESPEC extern void execute_5837(char*, char *);
IKI_DLLESPEC extern void execute_5838(char*, char *);
IKI_DLLESPEC extern void execute_5839(char*, char *);
IKI_DLLESPEC extern void execute_5840(char*, char *);
IKI_DLLESPEC extern void execute_5841(char*, char *);
IKI_DLLESPEC extern void execute_5842(char*, char *);
IKI_DLLESPEC extern void execute_5843(char*, char *);
IKI_DLLESPEC extern void execute_5844(char*, char *);
IKI_DLLESPEC extern void execute_5845(char*, char *);
IKI_DLLESPEC extern void execute_5846(char*, char *);
IKI_DLLESPEC extern void execute_5847(char*, char *);
IKI_DLLESPEC extern void execute_5848(char*, char *);
IKI_DLLESPEC extern void execute_5849(char*, char *);
IKI_DLLESPEC extern void execute_5850(char*, char *);
IKI_DLLESPEC extern void execute_5851(char*, char *);
IKI_DLLESPEC extern void execute_5852(char*, char *);
IKI_DLLESPEC extern void execute_5853(char*, char *);
IKI_DLLESPEC extern void execute_5854(char*, char *);
IKI_DLLESPEC extern void execute_5855(char*, char *);
IKI_DLLESPEC extern void execute_5856(char*, char *);
IKI_DLLESPEC extern void execute_5857(char*, char *);
IKI_DLLESPEC extern void execute_5858(char*, char *);
IKI_DLLESPEC extern void execute_5859(char*, char *);
IKI_DLLESPEC extern void execute_5860(char*, char *);
IKI_DLLESPEC extern void execute_5861(char*, char *);
IKI_DLLESPEC extern void execute_5862(char*, char *);
IKI_DLLESPEC extern void execute_5863(char*, char *);
IKI_DLLESPEC extern void execute_5864(char*, char *);
IKI_DLLESPEC extern void execute_5865(char*, char *);
IKI_DLLESPEC extern void execute_5866(char*, char *);
IKI_DLLESPEC extern void execute_5867(char*, char *);
IKI_DLLESPEC extern void execute_5868(char*, char *);
IKI_DLLESPEC extern void execute_5869(char*, char *);
IKI_DLLESPEC extern void execute_5870(char*, char *);
IKI_DLLESPEC extern void execute_5871(char*, char *);
IKI_DLLESPEC extern void execute_5872(char*, char *);
IKI_DLLESPEC extern void execute_5873(char*, char *);
IKI_DLLESPEC extern void execute_5874(char*, char *);
IKI_DLLESPEC extern void execute_5875(char*, char *);
IKI_DLLESPEC extern void execute_5876(char*, char *);
IKI_DLLESPEC extern void execute_5877(char*, char *);
IKI_DLLESPEC extern void execute_5878(char*, char *);
IKI_DLLESPEC extern void execute_5879(char*, char *);
IKI_DLLESPEC extern void execute_5880(char*, char *);
IKI_DLLESPEC extern void execute_5881(char*, char *);
IKI_DLLESPEC extern void execute_5882(char*, char *);
IKI_DLLESPEC extern void execute_5883(char*, char *);
IKI_DLLESPEC extern void execute_5884(char*, char *);
IKI_DLLESPEC extern void execute_5885(char*, char *);
IKI_DLLESPEC extern void execute_5886(char*, char *);
IKI_DLLESPEC extern void execute_5887(char*, char *);
IKI_DLLESPEC extern void execute_5888(char*, char *);
IKI_DLLESPEC extern void execute_5889(char*, char *);
IKI_DLLESPEC extern void execute_5890(char*, char *);
IKI_DLLESPEC extern void execute_5891(char*, char *);
IKI_DLLESPEC extern void execute_5892(char*, char *);
IKI_DLLESPEC extern void execute_5893(char*, char *);
IKI_DLLESPEC extern void execute_5894(char*, char *);
IKI_DLLESPEC extern void execute_5895(char*, char *);
IKI_DLLESPEC extern void execute_5896(char*, char *);
IKI_DLLESPEC extern void execute_5897(char*, char *);
IKI_DLLESPEC extern void execute_5898(char*, char *);
IKI_DLLESPEC extern void execute_5899(char*, char *);
IKI_DLLESPEC extern void execute_5900(char*, char *);
IKI_DLLESPEC extern void execute_5901(char*, char *);
IKI_DLLESPEC extern void execute_5902(char*, char *);
IKI_DLLESPEC extern void execute_5903(char*, char *);
IKI_DLLESPEC extern void execute_5904(char*, char *);
IKI_DLLESPEC extern void execute_5905(char*, char *);
IKI_DLLESPEC extern void execute_5906(char*, char *);
IKI_DLLESPEC extern void execute_5907(char*, char *);
IKI_DLLESPEC extern void execute_5908(char*, char *);
IKI_DLLESPEC extern void execute_5909(char*, char *);
IKI_DLLESPEC extern void execute_5910(char*, char *);
IKI_DLLESPEC extern void execute_5911(char*, char *);
IKI_DLLESPEC extern void execute_5912(char*, char *);
IKI_DLLESPEC extern void execute_5913(char*, char *);
IKI_DLLESPEC extern void execute_5914(char*, char *);
IKI_DLLESPEC extern void execute_5915(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_for_reg(char*, char*, char*);
IKI_DLLESPEC extern void execute_332(char*, char *);
IKI_DLLESPEC extern void execute_12(char*, char *);
IKI_DLLESPEC extern void execute_13(char*, char *);
IKI_DLLESPEC extern void execute_342(char*, char *);
IKI_DLLESPEC extern void execute_343(char*, char *);
IKI_DLLESPEC extern void execute_344(char*, char *);
IKI_DLLESPEC extern void execute_16(char*, char *);
IKI_DLLESPEC extern void execute_333(char*, char *);
IKI_DLLESPEC extern void execute_24(char*, char *);
IKI_DLLESPEC extern void execute_345(char*, char *);
IKI_DLLESPEC extern void execute_346(char*, char *);
IKI_DLLESPEC extern void execute_347(char*, char *);
IKI_DLLESPEC extern void execute_348(char*, char *);
IKI_DLLESPEC extern void execute_349(char*, char *);
IKI_DLLESPEC extern void execute_350(char*, char *);
IKI_DLLESPEC extern void execute_351(char*, char *);
IKI_DLLESPEC extern void execute_352(char*, char *);
IKI_DLLESPEC extern void execute_353(char*, char *);
IKI_DLLESPEC extern void execute_354(char*, char *);
IKI_DLLESPEC extern void execute_355(char*, char *);
IKI_DLLESPEC extern void execute_356(char*, char *);
IKI_DLLESPEC extern void execute_357(char*, char *);
IKI_DLLESPEC extern void execute_358(char*, char *);
IKI_DLLESPEC extern void execute_359(char*, char *);
IKI_DLLESPEC extern void execute_360(char*, char *);
IKI_DLLESPEC extern void execute_361(char*, char *);
IKI_DLLESPEC extern void execute_362(char*, char *);
IKI_DLLESPEC extern void execute_363(char*, char *);
IKI_DLLESPEC extern void execute_364(char*, char *);
IKI_DLLESPEC extern void execute_365(char*, char *);
IKI_DLLESPEC extern void execute_366(char*, char *);
IKI_DLLESPEC extern void execute_367(char*, char *);
IKI_DLLESPEC extern void execute_368(char*, char *);
IKI_DLLESPEC extern void execute_369(char*, char *);
IKI_DLLESPEC extern void execute_370(char*, char *);
IKI_DLLESPEC extern void execute_371(char*, char *);
IKI_DLLESPEC extern void execute_372(char*, char *);
IKI_DLLESPEC extern void execute_373(char*, char *);
IKI_DLLESPEC extern void execute_374(char*, char *);
IKI_DLLESPEC extern void execute_375(char*, char *);
IKI_DLLESPEC extern void execute_376(char*, char *);
IKI_DLLESPEC extern void execute_377(char*, char *);
IKI_DLLESPEC extern void execute_378(char*, char *);
IKI_DLLESPEC extern void execute_379(char*, char *);
IKI_DLLESPEC extern void execute_380(char*, char *);
IKI_DLLESPEC extern void execute_381(char*, char *);
IKI_DLLESPEC extern void execute_382(char*, char *);
IKI_DLLESPEC extern void execute_383(char*, char *);
IKI_DLLESPEC extern void execute_384(char*, char *);
IKI_DLLESPEC extern void execute_385(char*, char *);
IKI_DLLESPEC extern void execute_386(char*, char *);
IKI_DLLESPEC extern void execute_387(char*, char *);
IKI_DLLESPEC extern void execute_388(char*, char *);
IKI_DLLESPEC extern void execute_389(char*, char *);
IKI_DLLESPEC extern void execute_390(char*, char *);
IKI_DLLESPEC extern void execute_391(char*, char *);
IKI_DLLESPEC extern void execute_392(char*, char *);
IKI_DLLESPEC extern void execute_393(char*, char *);
IKI_DLLESPEC extern void execute_36(char*, char *);
IKI_DLLESPEC extern void execute_657(char*, char *);
IKI_DLLESPEC extern void execute_48(char*, char *);
IKI_DLLESPEC extern void execute_663(char*, char *);
IKI_DLLESPEC extern void execute_664(char*, char *);
IKI_DLLESPEC extern void execute_665(char*, char *);
IKI_DLLESPEC extern void execute_690(char*, char *);
IKI_DLLESPEC extern void execute_691(char*, char *);
IKI_DLLESPEC extern void execute_692(char*, char *);
IKI_DLLESPEC extern void execute_61(char*, char *);
IKI_DLLESPEC extern void execute_681(char*, char *);
IKI_DLLESPEC extern void execute_114(char*, char *);
IKI_DLLESPEC extern void execute_115(char*, char *);
IKI_DLLESPEC extern void execute_1047(char*, char *);
IKI_DLLESPEC extern void execute_1048(char*, char *);
IKI_DLLESPEC extern void execute_1049(char*, char *);
IKI_DLLESPEC extern void execute_1050(char*, char *);
IKI_DLLESPEC extern void execute_1051(char*, char *);
IKI_DLLESPEC extern void execute_1052(char*, char *);
IKI_DLLESPEC extern void execute_1053(char*, char *);
IKI_DLLESPEC extern void execute_118(char*, char *);
IKI_DLLESPEC extern void execute_753(char*, char *);
IKI_DLLESPEC extern void execute_754(char*, char *);
IKI_DLLESPEC extern void execute_755(char*, char *);
IKI_DLLESPEC extern void execute_756(char*, char *);
IKI_DLLESPEC extern void execute_757(char*, char *);
IKI_DLLESPEC extern void execute_758(char*, char *);
IKI_DLLESPEC extern void execute_759(char*, char *);
IKI_DLLESPEC extern void execute_760(char*, char *);
IKI_DLLESPEC extern void execute_761(char*, char *);
IKI_DLLESPEC extern void execute_762(char*, char *);
IKI_DLLESPEC extern void execute_763(char*, char *);
IKI_DLLESPEC extern void execute_764(char*, char *);
IKI_DLLESPEC extern void execute_765(char*, char *);
IKI_DLLESPEC extern void execute_766(char*, char *);
IKI_DLLESPEC extern void execute_767(char*, char *);
IKI_DLLESPEC extern void execute_768(char*, char *);
IKI_DLLESPEC extern void execute_769(char*, char *);
IKI_DLLESPEC extern void execute_770(char*, char *);
IKI_DLLESPEC extern void execute_771(char*, char *);
IKI_DLLESPEC extern void execute_772(char*, char *);
IKI_DLLESPEC extern void execute_773(char*, char *);
IKI_DLLESPEC extern void execute_774(char*, char *);
IKI_DLLESPEC extern void execute_775(char*, char *);
IKI_DLLESPEC extern void execute_776(char*, char *);
IKI_DLLESPEC extern void execute_777(char*, char *);
IKI_DLLESPEC extern void execute_778(char*, char *);
IKI_DLLESPEC extern void execute_779(char*, char *);
IKI_DLLESPEC extern void execute_780(char*, char *);
IKI_DLLESPEC extern void execute_781(char*, char *);
IKI_DLLESPEC extern void execute_782(char*, char *);
IKI_DLLESPEC extern void execute_783(char*, char *);
IKI_DLLESPEC extern void execute_784(char*, char *);
IKI_DLLESPEC extern void execute_785(char*, char *);
IKI_DLLESPEC extern void execute_786(char*, char *);
IKI_DLLESPEC extern void execute_787(char*, char *);
IKI_DLLESPEC extern void execute_788(char*, char *);
IKI_DLLESPEC extern void execute_789(char*, char *);
IKI_DLLESPEC extern void execute_790(char*, char *);
IKI_DLLESPEC extern void execute_791(char*, char *);
IKI_DLLESPEC extern void execute_792(char*, char *);
IKI_DLLESPEC extern void execute_793(char*, char *);
IKI_DLLESPEC extern void execute_794(char*, char *);
IKI_DLLESPEC extern void execute_795(char*, char *);
IKI_DLLESPEC extern void execute_796(char*, char *);
IKI_DLLESPEC extern void execute_797(char*, char *);
IKI_DLLESPEC extern void execute_798(char*, char *);
IKI_DLLESPEC extern void execute_799(char*, char *);
IKI_DLLESPEC extern void execute_800(char*, char *);
IKI_DLLESPEC extern void execute_801(char*, char *);
IKI_DLLESPEC extern void execute_327(char*, char *);
IKI_DLLESPEC extern void execute_328(char*, char *);
IKI_DLLESPEC extern void execute_329(char*, char *);
IKI_DLLESPEC extern void execute_330(char*, char *);
IKI_DLLESPEC extern void execute_5918(char*, char *);
IKI_DLLESPEC extern void execute_5919(char*, char *);
IKI_DLLESPEC extern void execute_5920(char*, char *);
IKI_DLLESPEC extern void execute_5921(char*, char *);
IKI_DLLESPEC extern void execute_5922(char*, char *);
IKI_DLLESPEC extern void execute_5923(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[514] = {(funcp)execute_324, (funcp)execute_325, (funcp)execute_5917, (funcp)execute_5916, (funcp)execute_4, (funcp)execute_5, (funcp)execute_394, (funcp)execute_395, (funcp)execute_396, (funcp)execute_446, (funcp)execute_447, (funcp)execute_448, (funcp)execute_498, (funcp)execute_499, (funcp)execute_500, (funcp)execute_550, (funcp)execute_551, (funcp)execute_552, (funcp)execute_602, (funcp)execute_603, (funcp)execute_604, (funcp)execute_654, (funcp)execute_655, (funcp)execute_656, (funcp)execute_1054, (funcp)execute_1055, (funcp)execute_1056, (funcp)execute_1358, (funcp)execute_1359, (funcp)execute_1360, (funcp)execute_1662, (funcp)execute_1663, (funcp)execute_1664, (funcp)execute_1966, (funcp)execute_1967, (funcp)execute_1968, (funcp)execute_2270, (funcp)execute_2271, (funcp)execute_2272, (funcp)execute_2574, (funcp)execute_2575, (funcp)execute_2576, (funcp)execute_2878, (funcp)execute_2879, (funcp)execute_2880, (funcp)execute_3182, (funcp)execute_3183, (funcp)execute_3184, (funcp)execute_3486, (funcp)execute_3487, (funcp)execute_3488, (funcp)execute_3790, (funcp)execute_3791, (funcp)execute_3792, (funcp)execute_4094, (funcp)execute_4095, (funcp)execute_4096, (funcp)execute_4398, (funcp)execute_4399, (funcp)execute_4400, (funcp)execute_4702, (funcp)execute_4703, (funcp)execute_4704, (funcp)execute_5006, (funcp)execute_5007, (funcp)execute_5008, (funcp)execute_5310, (funcp)execute_5311, (funcp)execute_5312, (funcp)execute_5614, (funcp)execute_5615, (funcp)execute_5616, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_5618, (funcp)execute_5619, (funcp)execute_5620, (funcp)execute_5621, (funcp)execute_5622, (funcp)execute_5623, (funcp)execute_5624, (funcp)execute_5625, (funcp)execute_5626, (funcp)execute_5627, (funcp)execute_5628, (funcp)execute_5629, (funcp)execute_5630, (funcp)execute_5631, (funcp)execute_5632, (funcp)execute_5633, (funcp)execute_5634, (funcp)execute_5635, (funcp)execute_5636, (funcp)execute_5637, (funcp)execute_5638, (funcp)execute_5639, (funcp)execute_5640, (funcp)execute_5641, (funcp)execute_5642, (funcp)execute_5643, (funcp)execute_5644, (funcp)execute_5645, (funcp)execute_5646, (funcp)execute_5647, (funcp)execute_5648, (funcp)execute_5649, (funcp)execute_5650, (funcp)execute_5651, (funcp)execute_5652, (funcp)execute_5653, (funcp)execute_5654, (funcp)execute_5655, (funcp)execute_5656, (funcp)execute_5657, (funcp)execute_5658, (funcp)execute_5659, (funcp)execute_5660, (funcp)execute_5661, (funcp)execute_5662, (funcp)execute_5663, (funcp)execute_5664, (funcp)execute_5665, (funcp)execute_5666, (funcp)execute_5667, (funcp)execute_5668, (funcp)execute_5669, (funcp)execute_5670, (funcp)execute_5671, (funcp)execute_5672, (funcp)execute_5673, (funcp)execute_5674, (funcp)execute_5675, (funcp)execute_5676, (funcp)execute_5677, (funcp)execute_5678, (funcp)execute_5679, (funcp)execute_5680, (funcp)execute_5681, (funcp)execute_5682, (funcp)execute_5683, (funcp)execute_5684, (funcp)execute_5685, (funcp)execute_5686, (funcp)execute_5687, (funcp)execute_5688, (funcp)execute_5689, (funcp)execute_5690, (funcp)execute_5691, (funcp)execute_5692, (funcp)execute_5693, (funcp)execute_5694, (funcp)execute_5695, (funcp)execute_5696, (funcp)execute_5697, (funcp)execute_5698, (funcp)execute_5699, (funcp)execute_5700, (funcp)execute_5701, (funcp)execute_5702, (funcp)execute_5703, (funcp)execute_5704, (funcp)execute_5705, (funcp)execute_5706, (funcp)execute_5707, (funcp)execute_5708, (funcp)execute_5709, (funcp)execute_5710, (funcp)execute_5711, (funcp)execute_5712, (funcp)execute_5713, (funcp)execute_5714, (funcp)execute_5715, (funcp)execute_5716, (funcp)execute_5717, (funcp)execute_5718, (funcp)execute_5719, (funcp)execute_5720, (funcp)execute_5721, (funcp)execute_5722, (funcp)execute_5723, (funcp)execute_5724, (funcp)execute_5725, (funcp)execute_5726, (funcp)execute_5727, (funcp)execute_5728, (funcp)execute_5729, (funcp)execute_5730, (funcp)execute_5731, (funcp)execute_5732, (funcp)execute_5733, (funcp)execute_5734, (funcp)execute_5735, (funcp)execute_5736, (funcp)execute_5737, (funcp)execute_5738, (funcp)execute_5739, (funcp)execute_5740, (funcp)execute_5741, (funcp)execute_5742, (funcp)execute_5743, (funcp)execute_5744, (funcp)execute_5745, (funcp)execute_5746, (funcp)execute_5747, (funcp)execute_5748, (funcp)execute_5749, (funcp)execute_5750, (funcp)execute_5751, (funcp)execute_5752, (funcp)execute_5753, (funcp)execute_5754, (funcp)execute_5755, (funcp)execute_5756, (funcp)execute_5757, (funcp)execute_5758, (funcp)execute_5759, (funcp)execute_5760, (funcp)execute_5761, (funcp)execute_5762, (funcp)execute_5763, (funcp)execute_5764, (funcp)execute_5765, (funcp)execute_5766, (funcp)execute_5767, (funcp)execute_5768, (funcp)execute_5769, (funcp)execute_5770, (funcp)execute_5771, (funcp)execute_5772, (funcp)execute_5773, (funcp)execute_5774, (funcp)execute_5775, (funcp)execute_5776, (funcp)execute_5777, (funcp)execute_5778, (funcp)execute_5779, (funcp)execute_5780, (funcp)execute_5781, (funcp)execute_5782, (funcp)execute_5783, (funcp)execute_5784, (funcp)execute_5785, (funcp)execute_5786, (funcp)execute_5787, (funcp)execute_5788, (funcp)execute_5789, (funcp)execute_5790, (funcp)execute_5791, (funcp)execute_5792, (funcp)execute_5793, (funcp)execute_5794, (funcp)execute_5795, (funcp)execute_5796, (funcp)execute_5797, (funcp)execute_5798, (funcp)execute_5799, (funcp)execute_5800, (funcp)execute_5801, (funcp)execute_5802, (funcp)execute_5803, (funcp)execute_5804, (funcp)execute_5805, (funcp)execute_5806, (funcp)execute_5807, (funcp)execute_5808, (funcp)execute_5809, (funcp)execute_5810, (funcp)execute_5811, (funcp)execute_5812, (funcp)execute_5813, (funcp)execute_5814, (funcp)execute_5815, (funcp)execute_5816, (funcp)execute_5817, (funcp)execute_5818, (funcp)execute_5819, (funcp)execute_5820, (funcp)execute_5821, (funcp)execute_5822, (funcp)execute_5823, (funcp)execute_5824, (funcp)execute_5825, (funcp)execute_5826, (funcp)execute_5827, (funcp)execute_5828, (funcp)execute_5829, (funcp)execute_5830, (funcp)execute_5831, (funcp)execute_5832, (funcp)execute_5833, (funcp)execute_5834, (funcp)execute_5835, (funcp)execute_5836, (funcp)execute_5837, (funcp)execute_5838, (funcp)execute_5839, (funcp)execute_5840, (funcp)execute_5841, (funcp)execute_5842, (funcp)execute_5843, (funcp)execute_5844, (funcp)execute_5845, (funcp)execute_5846, (funcp)execute_5847, (funcp)execute_5848, (funcp)execute_5849, (funcp)execute_5850, (funcp)execute_5851, (funcp)execute_5852, (funcp)execute_5853, (funcp)execute_5854, (funcp)execute_5855, (funcp)execute_5856, (funcp)execute_5857, (funcp)execute_5858, (funcp)execute_5859, (funcp)execute_5860, (funcp)execute_5861, (funcp)execute_5862, (funcp)execute_5863, (funcp)execute_5864, (funcp)execute_5865, (funcp)execute_5866, (funcp)execute_5867, (funcp)execute_5868, (funcp)execute_5869, (funcp)execute_5870, (funcp)execute_5871, (funcp)execute_5872, (funcp)execute_5873, (funcp)execute_5874, (funcp)execute_5875, (funcp)execute_5876, (funcp)execute_5877, (funcp)execute_5878, (funcp)execute_5879, (funcp)execute_5880, (funcp)execute_5881, (funcp)execute_5882, (funcp)execute_5883, (funcp)execute_5884, (funcp)execute_5885, (funcp)execute_5886, (funcp)execute_5887, (funcp)execute_5888, (funcp)execute_5889, (funcp)execute_5890, (funcp)execute_5891, (funcp)execute_5892, (funcp)execute_5893, (funcp)execute_5894, (funcp)execute_5895, (funcp)execute_5896, (funcp)execute_5897, (funcp)execute_5898, (funcp)execute_5899, (funcp)execute_5900, (funcp)execute_5901, (funcp)execute_5902, (funcp)execute_5903, (funcp)execute_5904, (funcp)execute_5905, (funcp)execute_5906, (funcp)execute_5907, (funcp)execute_5908, (funcp)execute_5909, (funcp)execute_5910, (funcp)execute_5911, (funcp)execute_5912, (funcp)execute_5913, (funcp)execute_5914, (funcp)execute_5915, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)vlog_simple_process_execute_0_fast_for_reg, (funcp)execute_332, (funcp)execute_12, (funcp)execute_13, (funcp)execute_342, (funcp)execute_343, (funcp)execute_344, (funcp)execute_16, (funcp)execute_333, (funcp)execute_24, (funcp)execute_345, (funcp)execute_346, (funcp)execute_347, (funcp)execute_348, (funcp)execute_349, (funcp)execute_350, (funcp)execute_351, (funcp)execute_352, (funcp)execute_353, (funcp)execute_354, (funcp)execute_355, (funcp)execute_356, (funcp)execute_357, (funcp)execute_358, (funcp)execute_359, (funcp)execute_360, (funcp)execute_361, (funcp)execute_362, (funcp)execute_363, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_367, (funcp)execute_368, (funcp)execute_369, (funcp)execute_370, (funcp)execute_371, (funcp)execute_372, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_376, (funcp)execute_377, (funcp)execute_378, (funcp)execute_379, (funcp)execute_380, (funcp)execute_381, (funcp)execute_382, (funcp)execute_383, (funcp)execute_384, (funcp)execute_385, (funcp)execute_386, (funcp)execute_387, (funcp)execute_388, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_392, (funcp)execute_393, (funcp)execute_36, (funcp)execute_657, (funcp)execute_48, (funcp)execute_663, (funcp)execute_664, (funcp)execute_665, (funcp)execute_690, (funcp)execute_691, (funcp)execute_692, (funcp)execute_61, (funcp)execute_681, (funcp)execute_114, (funcp)execute_115, (funcp)execute_1047, (funcp)execute_1048, (funcp)execute_1049, (funcp)execute_1050, (funcp)execute_1051, (funcp)execute_1052, (funcp)execute_1053, (funcp)execute_118, (funcp)execute_753, (funcp)execute_754, (funcp)execute_755, (funcp)execute_756, (funcp)execute_757, (funcp)execute_758, (funcp)execute_759, (funcp)execute_760, (funcp)execute_761, (funcp)execute_762, (funcp)execute_763, (funcp)execute_764, (funcp)execute_765, (funcp)execute_766, (funcp)execute_767, (funcp)execute_768, (funcp)execute_769, (funcp)execute_770, (funcp)execute_771, (funcp)execute_772, (funcp)execute_773, (funcp)execute_774, (funcp)execute_775, (funcp)execute_776, (funcp)execute_777, (funcp)execute_778, (funcp)execute_779, (funcp)execute_780, (funcp)execute_781, (funcp)execute_782, (funcp)execute_783, (funcp)execute_784, (funcp)execute_785, (funcp)execute_786, (funcp)execute_787, (funcp)execute_788, (funcp)execute_789, (funcp)execute_790, (funcp)execute_791, (funcp)execute_792, (funcp)execute_793, (funcp)execute_794, (funcp)execute_795, (funcp)execute_796, (funcp)execute_797, (funcp)execute_798, (funcp)execute_799, (funcp)execute_800, (funcp)execute_801, (funcp)execute_327, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_5918, (funcp)execute_5919, (funcp)execute_5920, (funcp)execute_5921, (funcp)execute_5922, (funcp)execute_5923, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 514;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_behav/xsim.reloc",  (void **)funcTab, 514);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_behav/xsim.reloc");
	wrapper_func_0(dp);

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
    iki_set_sv_type_file_path_name("xsim.dir/tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
