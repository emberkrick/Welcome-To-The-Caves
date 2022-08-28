//Maya ASCII 2019 scene
//Name: final_plaque.ma
//Last modified: Sun, Mar 14, 2021 10:41:41 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18363)\n";
createNode transform -s -n "persp";
	rename -uid "CBC7CA6E-4636-8638-00BB-A8B32C1DEA8B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.497259163150126 8.2099237419524194 23.688772572415722 ;
	setAttr ".r" -type "double3" -9.9383527303285408 12.600000000000289 2.0369018685217192e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3D839BB1-4A20-89A2-6E0B-AA89DB1330AC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 30.45416457499277;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C5BB2EA7-4259-B279-B038-1A98FFFEF952";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8CF08510-467B-D79A-1DFF-23A27734E6AE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2A4075CA-440C-2485-8783-E6A1567C29ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AF5A62DF-4800-3175-6C52-D98E88ACC527";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "105E1DC1-46D0-B10B-8758-7C82355EC1F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7D60953A-45D2-4AD6-BC40-9CB67BCF50CF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "207F6EF0-4A47-1EB8-8178-37A395D626A2";
	setAttr ".t" -type "double3" -0.5 3 -0.5 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "5CC28F14-470F-8B35-20F6-E5ADDCDD81E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57822338183489719 0.50126297532483999 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "32225CC9-455F-C6EA-10C6-219013BB3763";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C7E92055-4CB9-93C7-D025-35B71F92EEB9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "109DA0EC-4DDD-1EC8-D08C-5ABDA0280403";
createNode displayLayerManager -n "layerManager";
	rename -uid "53D2F1D9-4A19-A9DC-017D-BC8F4BCB19C0";
createNode displayLayer -n "defaultLayer";
	rename -uid "18B83FAC-48CF-CEA5-ECC7-75B74402FFF9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6CBE669B-46DC-B941-36B8-EAAFFCF5629B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FB7ABB7F-4484-746A-0108-349EA8E6AF5C";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "24886246-4B1D-D68A-94D1-4CA54E3AABB2";
	setAttr ".w" 13;
	setAttr ".h" 6;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "D4CE708E-48CE-45F8-B554-AB923344138E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.039474911987781525;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "35F12D92-464A-2FE4-DAA3-81ACDBEED081";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.92521679401397705;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "3535F3BC-44D0-996C-9BC7-1E973E2F41F8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[12:13]" "e[15]" "e[17]" "e[26]" "e[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.95439523458480835;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "84D78660-4D9B-4283-D3B2-45B02354A685";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[4:5]" "e[19]" "e[21]" "e[23]" "e[25]" "e[38]" "e[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.062739104032516479;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "246065C9-40AC-EEEE-CE54-C5BA142AF356";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[28]" "e[34]" "e[40]" "e[46]" "e[54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.48530083894729614;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "7DAB2EDF-49F9-B181-6BA6-62942384CA1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[12:13]" "e[15]" "e[17]" "e[26]" "e[41]" "e[50]" "e[58]" "e[64]" "e[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.066785648465156555;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "D72958D0-4271-9C40-CF0C-A0AA80B27B45";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0.28437257 0.16119201 0 ;
	setAttr ".tk[1]" -type "float3" -0.25947058 0.16119201 0 ;
	setAttr ".tk[2]" -type "float3" 0.28437257 -0.19293086 0 ;
	setAttr ".tk[3]" -type "float3" -0.25947058 -0.19293086 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.19293086 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.16119201 0 ;
	setAttr ".tk[12]" -type "float3" 0.28437257 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.25947058 0 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.19293086 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.16119201 0 ;
	setAttr ".tk[24]" -type "float3" 0.28437257 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.25947058 0 0 ;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "87BB2EE0-46F2-1DAC-1D05-BE8B6C62A2C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[84]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.07428441196680069;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "2DC20F90-4F9A-E73D-C261-CFAB22BE4219";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[104]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.074701309204101563;
	setAttr ".re" 104;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "F35C7013-4FED-EA09-9C31-7DBB643474E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[124]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.083323433995246887;
	setAttr ".re" 124;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "F9F237D2-46BC-6BFC-9486-679EAB1C7F66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[144]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.095970883965492249;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "F939B85B-4514-D0AA-9CC3-44A5295EAE61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[164]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.098172701895236969;
	setAttr ".re" 164;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "9E6D633A-4389-F58C-8921-EEB6746EA6C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[184]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.12754297256469727;
	setAttr ".re" 184;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "A1722079-4602-6345-7735-F586BD2AE417";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[204]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.15983948111534119;
	setAttr ".re" 204;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "67C7FB40-48E8-2207-3047-88945E1E17B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[224]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.1755547970533371;
	setAttr ".re" 224;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "C03AD1FA-4A0D-2EFB-41A8-BE9AAC71773B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[244]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.23966352641582489;
	setAttr ".re" 244;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "78701DD7-482F-8D7B-D644-7AB36AFDE110";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[264]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.24613240361213684;
	setAttr ".re" 264;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "9D4D25B0-445C-B6B6-5B70-0F8A3029B57F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[284]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.33912241458892822;
	setAttr ".re" 284;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "33EA02A8-4EA8-27E9-3B3C-299C7E633045";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[41]" "e[58]" "e[64]" "e[304]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.49219980835914612;
	setAttr ".re" 304;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "91CE0907-484E-E105-4E47-AB851FB0549A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[21]" "e[23]" "e[25]" "e[38]" "e[44]" "e[53]" "e[55]" "e[57]" "e[70]" "e[82]" "e[92]" "e[102]" "e[112]" "e[122]" "e[132]" "e[142]" "e[152]" "e[162]" "e[172]" "e[182]" "e[192]" "e[202]" "e[212]" "e[222]" "e[232]" "e[242]" "e[252]" "e[262]" "e[272]" "e[282]" "e[292]" "e[302]" "e[312]" "e[322]" "e[332]" "e[342]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.85137248039245605;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "4A3EB606-4B98-D3E6-8E63-539B7A25F260";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[44]" "e[53]" "e[55]" "e[57]" "e[82]" "e[102]" "e[122]" "e[142]" "e[162]" "e[182]" "e[202]" "e[222]" "e[242]" "e[262]" "e[282]" "e[302]" "e[322]" "e[342]" "e[345]" "e[347]" "e[349]" "e[351]" "e[353]" "e[355]" "e[357]" "e[359]" "e[361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[371]" "e[373]" "e[375]" "e[377]" "e[379]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.81331926584243774;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "703F988B-41B5-6CF4-944A-50956E5208C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[44]" "e[53]" "e[55]" "e[57]" "e[82]" "e[102]" "e[122]" "e[142]" "e[162]" "e[182]" "e[202]" "e[222]" "e[242]" "e[262]" "e[282]" "e[302]" "e[322]" "e[342]" "e[417]" "e[419]" "e[421]" "e[423]" "e[425]" "e[427]" "e[429]" "e[431]" "e[433]" "e[435]" "e[437]" "e[439]" "e[441]" "e[443]" "e[445]" "e[447]" "e[449]" "e[451]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.78505873680114746;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "6928958C-49D1-963B-ED8A-C199E68AD9E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[44]" "e[53]" "e[55]" "e[57]" "e[82]" "e[102]" "e[122]" "e[142]" "e[162]" "e[182]" "e[202]" "e[222]" "e[242]" "e[262]" "e[282]" "e[302]" "e[322]" "e[342]" "e[489]" "e[491]" "e[493]" "e[495]" "e[497]" "e[499]" "e[501]" "e[503]" "e[505]" "e[507]" "e[509]" "e[511]" "e[513]" "e[515]" "e[517]" "e[519]" "e[521]" "e[523]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.67907488346099854;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "7452C73C-4653-F5FC-0A24-689B85D71DE2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[44]" "e[53]" "e[55]" "e[57]" "e[82]" "e[102]" "e[122]" "e[142]" "e[162]" "e[182]" "e[202]" "e[222]" "e[242]" "e[262]" "e[282]" "e[302]" "e[322]" "e[342]" "e[561]" "e[563]" "e[565]" "e[567]" "e[569]" "e[571]" "e[573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]" "e[595]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.56364542245864868;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "A18D840C-4A54-42CD-AB53-D9820F5F7EEF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[44]" "e[53]" "e[55]" "e[57]" "e[82]" "e[102]" "e[122]" "e[142]" "e[162]" "e[182]" "e[202]" "e[222]" "e[242]" "e[262]" "e[282]" "e[302]" "e[322]" "e[342]" "e[633]" "e[635]" "e[637]" "e[639]" "e[641]" "e[643]" "e[645]" "e[647]" "e[649]" "e[651]" "e[653]" "e[655]" "e[657]" "e[659]" "e[661]" "e[663]" "e[665]" "e[667]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".wt" 0.44072955846786499;
	setAttr ".dr" no;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4636548B-4A41-9B07-B406-8184B91A6D17";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 882\n            -height 702\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 882\\n    -height 702\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 882\\n    -height 702\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "30889D31-4EB2-450C-0C5E-0C8D69373A63";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "7AA2D315-4FA9-EE42-AD4F-C28842F3114A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTweak -n "polyTweak2";
	rename -uid "54C54564-481D-2B7A-00FD-6C8205310347";
	setAttr ".uopa" yes;
	setAttr -s 63 ".tk";
	setAttr ".tk[2]" -type "float3" 0.41140565 -0.48940921 -0.18370979 ;
	setAttr ".tk[4]" -type "float3" 0.5876646 -0.4773885 0.031617917 ;
	setAttr ".tk[8]" -type "float3" 0.33190483 -0.35808191 -5.5879354e-08 ;
	setAttr ".tk[9]" -type "float3" 0.33190483 -0.15225305 -5.5879354e-08 ;
	setAttr ".tk[12]" -type "float3" 0.33190483 -0.32769826 -0.18370979 ;
	setAttr ".tk[13]" -type "float3" 0.45618129 -0.27798074 -5.5879354e-08 ;
	setAttr ".tk[14]" -type "float3" 0.33190483 -0.27798074 -5.5879354e-08 ;
	setAttr ".tk[17]" -type "float3" 0.33190483 -0.27798074 -5.5879354e-08 ;
	setAttr ".tk[18]" -type "float3" 0 -0.10671048 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.019536873 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.10120135 0 ;
	setAttr ".tk[34]" -type "float3" 0.33190483 -0.15225305 -5.5879354e-08 ;
	setAttr ".tk[35]" -type "float3" 0.69421363 -0.49203023 -5.5879354e-08 ;
	setAttr ".tk[36]" -type "float3" 0.33190483 -0.27798074 -5.5879354e-08 ;
	setAttr ".tk[44]" -type "float3" 0 -0.080101132 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.080101132 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.093510836 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.12166899 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.062880069 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.093510836 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.061575487 0 ;
	setAttr ".tk[90]" -type "float3" 0 0.19861832 0 ;
	setAttr ".tk[91]" -type "float3" 0 0.22947256 0 ;
	setAttr ".tk[92]" -type "float3" 0 0.13596168 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.093510836 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.30348921 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.27225095 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.20455858 0 ;
	setAttr ".tk[118]" -type "float3" 0.34950286 0 0 ;
	setAttr ".tk[119]" -type "float3" 0.34950286 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.34950286 0 0 ;
	setAttr ".tk[121]" -type "float3" 0.34950286 0 0 ;
	setAttr ".tk[122]" -type "float3" 0.34950286 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.61108875 0 0 ;
	setAttr ".tk[129]" -type "float3" 0.61108875 0 0 ;
	setAttr ".tk[130]" -type "float3" 0.61108875 0 0 ;
	setAttr ".tk[131]" -type "float3" 0.61108875 0 0 ;
	setAttr ".tk[132]" -type "float3" 0.61108875 0 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.079077609 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.079077609 0 ;
	setAttr ".tk[141]" -type "float3" -0.13346399 0.51655525 -0.076983094 ;
	setAttr ".tk[142]" -type "float3" -0.13346399 0.53417313 -0.076983094 ;
	setAttr ".tk[154]" -type "float3" 0 -0.048082668 0 ;
	setAttr ".tk[155]" -type "float3" 0 -0.10120135 0 ;
	setAttr ".tk[161]" -type "float3" 0 0.038480498 0 ;
	setAttr ".tk[164]" -type "float3" 0 -0.10671048 0 ;
	setAttr ".tk[165]" -type "float3" 0 -0.10120135 0 ;
	setAttr ".tk[170]" -type "float3" 0 0.059369985 0 ;
	setAttr ".tk[171]" -type "float3" 0 0.059369985 0 ;
	setAttr ".tk[175]" -type "float3" 0.083102778 0 0 ;
	setAttr ".tk[193]" -type "float3" -0.095113657 0 0 ;
	setAttr ".tk[194]" -type "float3" -0.068776757 0 0 ;
	setAttr ".tk[210]" -type "float3" -0.080296837 0 0 ;
	setAttr ".tk[229]" -type "float3" -0.095113657 0 0 ;
	setAttr ".tk[230]" -type "float3" -0.085391 0 0 ;
	setAttr ".tk[246]" -type "float3" 0.070539258 0 0 ;
	setAttr ".tk[247]" -type "float3" 0.070539258 0 0 ;
	setAttr ".tk[301]" -type "float3" -0.10608645 0 0 ;
	setAttr ".tk[302]" -type "float3" -0.067017943 0 0 ;
	setAttr ".tk[354]" -type "float3" -0.058110461 0 0 ;
	setAttr ".tk[366]" -type "float3" 0.61108875 0 0 ;
	setAttr ".tk[379]" -type "float3" -0.081369035 0.3898488 -0.053257816 ;
	setAttr ".tk[380]" -type "float3" 0.61108875 0 0 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "62A73857-4437-A337-06ED-38B35B60CC5A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:387]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 3 -0.5 1;
	setAttr ".s" -type "double3" 13 13 13 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode lambert -n "lambert2";
	rename -uid "5C567C2D-4C52-7BCA-8E86-8285174B5302";
createNode shadingEngine -n "lambert2SG";
	rename -uid "E4F2ED81-4B65-61EC-DFFB-66A748D3F98A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "776276E6-4479-A0B2-A3B7-61A0D77B1CF2";
createNode file -n "file1";
	rename -uid "D5259401-465B-0988-6C77-E5A37C621610";
	setAttr ".ftn" -type "string" "C:/Users/Miles/Desktop/Coding + Game Dev/ICS 162 Modeling and Worldbuilding/final/plaque_texture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "BA930C3F-444C-056F-CA44-A9ADC80FF5D8";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "5541388B-4FF2-1DB1-1336-E396C482E0E1";
	setAttr ".uopa" yes;
	setAttr -s 502 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.72468066 0.25162399 -0.74502176
		 0.25494915 -0.7392807 0.19790888 -0.71741211 0.21989727 -0.71862698 0.25771075 -0.73371553
		 0.26631731 -0.70597231 0.16478193 -0.68709219 0.18785787 -0.70230961 0.23508245 -0.66900122
		 0.2019555 -0.67042923 0.26713747 -0.70183516 0.29837221 -0.63712084 0.2340104 -0.61720598
		 0.32065219 -0.64861184 0.35188705 -0.58389753 0.28752524 -0.56736529 0.37076586 -0.59877121
		 0.40200073 -0.5340569 0.33763891 -0.50894421 0.42950696 -0.54035008 0.4607417 -0.47563577
		 0.39637989 -0.45500267 0.48374385 -0.48640859 0.51497877 -0.42169428 0.4506169 -0.4160344
		 0.52292562 -0.44744027 0.55416036 -0.38272601 0.48979855 -0.38532567 0.55380261 -0.41673154
		 0.58503735 -0.35201722 0.52067554 -0.3629095 0.57634151 -0.40469003 0.59714484 -0.32960111
		 0.54321444 0.073559836 0.90183568 0.052528508 0.94350195 0.030112391 0.92096305 0.061518319
		 0.88972819 0.019220117 0.9766289 -0.0031959973 0.95409 -0.00059640035 0.89008605
		 0.030809527 0.85885119 -0.03390478 0.92321301 -0.039564658 0.85090435 -0.0081587397
		 0.81966949 -0.072873093 0.8840313 -0.093506254 0.79666746 -0.062100329 0.7654326
		 -0.12681463 0.82979441 -0.15192732 0.73792636 -0.1205214 0.7066915 -0.18523565 0.77105331
		 -0.20176795 0.68781281 -0.17036203 0.65657794 -0.23507631 0.72093976 -0.25499129
		 0.63429797 -0.22358534 0.60306311 -0.28829962 0.66742492 -0.30476296 0.58425367 -0.27335703
		 0.55301881 -0.33807135 0.61738062 -0.33364207 0.55521643 -0.2898187 0.53646696 -0.36695039
		 0.58834338 -0.26874298 -0.41040695 -0.23571421 -0.3771973 -0.26712012 -0.34596244
		 -0.28184623 -0.36076915 -0.23543461 -0.44353393 -0.20240583 -0.41032425 -0.18448813
		 -0.32569063 -0.21589406 -0.2944558 -0.15117975 -0.35881761 -0.13131559 -0.27222684
		 -0.16272148 -0.24099198 -0.09800718 -0.30535379 -0.081816651 -0.22245684 -0.11322258
		 -0.19122201 -0.048508309 -0.25558379 -0.030728985 -0.17108935 -0.062134869 -0.13985452
		 0.0025793947 -0.20421633 0.023210201 -0.11685471 -0.0081957243 -0.085619912 0.056518592
		 -0.14998171 0.073091641 -0.066700116 0.041685678 -0.035465315 0.10639999 -0.099827126
		 0.13153395 -0.0079377219 0.100128 0.023297105 0.16484234 -0.041064695 0.21792823
		 0.078929789 0.18652233 0.11016461 0.25123668 0.045802809 0.29372895 0.15514553 0.26232296
		 0.18638039 0.32703727 0.12201858 0.32076347 0.18232813 0.2857495 0.19997111 0.3540718
		 0.14920115 0.37258542 0.23443395 0.34117949 0.26566878 0.4058938 0.20130697 0.42641199
		 0.28855526 0.39500606 0.31979012 0.45972037 0.25542831 0.47804201 0.34046808 0.44663608
		 0.37170294 0.51135039 0.30734113 0.53130841 0.39402631 0.49990249 0.42526114 0.5646168
		 0.36089933 0.56795979 0.4308784 0.51985395 0.44532186 0.60126817 0.39775145 0.11978824
		 0.80330491 0.1397396 0.82336569 0.12503363 0.87139189 0.088382311 0.83453977 0.091725297
		 0.90451884 0.055073924 0.86766672 0.066521712 0.74974668 0.035115786 0.78098154 0.0018073954
		 0.81410849 0.014891688 0.6978339 -0.016514231 0.72906876 -0.049822621 0.76219571
		 -0.038934816 0.64371252 -0.070340849 0.67494738 -0.10364918 0.70807433 -0.09075693
		 0.59160674 -0.12216286 0.6228416 -0.15547118 0.65596855 -0.15712216 0.52487803 -0.18852809
		 0.55611289 -0.22183648 0.58923984 -0.21608654 0.46559066 -0.24749252 0.49682552 -0.28080082
		 0.52995253 -0.27998632 0.4013409 -0.31139225 0.43257576 -0.34470063 0.46570271 -0.33842868
		 0.34257847 -0.3698346 0.37381333 -0.40314299 0.40694028 -0.38831002 0.29242384 -0.41971594
		 0.3236587 -0.45302433 0.35678566 -0.44224918 0.23818928 -0.47365528 0.26942402 -0.50696349
		 0.30255109 -0.49333698 0.1868217 -0.5247429 0.21805656 -0.55805123 0.25118351 -0.54283583
		 0.13705176 -0.57424176 0.16828662 -0.60755014 0.20141357 -0.59600836 0.083588012
		 -0.62741429 0.11482286 -0.66072267 0.14794981 -0.62587249 0.053560264 -0.65727842
		 0.084795125 -0.69058681 0.11792213 -0.27293718 -0.33622947 -0.25821114 -0.32142279
		 -0.27031857 -0.30938116 -0.28504461 -0.32418787 -0.20698497 -0.26991606 -0.21909243
		 -0.25787452 -0.30119556 -0.27867246 -0.31966162 -0.29723966 -0.15381238 -0.21645227
		 -0.1659199 -0.20441073 -0.24996939 -0.2271657 -0.34037727 -0.23970419 -0.35510331
		 -0.25451088 -0.11036497 -0.16066375 -0.11642096 -0.15464073 -0.19679686 -0.17370191
		 -0.28915113 -0.18819746 -0.39461422 -0.1857627 -0.40934026 -0.20056933 -0.059277274
		 -0.10929627 -0.065333284 -0.10327326 -0.14729795 -0.12393191 -0.23597857 -0.13473365
		 -0.34338808 -0.13425589 -0.45335519 -0.12734157 -0.46354121 -0.13758337 -0.01413675
		 -0.046310887 -0.020192761 -0.040287897 -0.096210249 -0.072564468 -0.18647972 -0.084963754
		 -0.29021549 -0.080792174 -0.40212905 -0.075834915 -0.50346881 -0.077501044 -0.52336293
		 -0.097504117 0.044543304 -0.0049070641 0.038487293 0.0011159517 -0.042271066 -0.018329844
		 -0.13539198 -0.033596203 -0.24071667 -0.031022236 -0.34895653 -0.022371098 -0.45224261
		 -0.025994286 -0.55698365 -0.024277672 -0.57170969 -0.03908436 0.10903711 0.047836818
		 0.096929587 0.059878357 0.0076103248 0.031824712 -0.081452765 0.02063844 -0.18962893
		 0.020345334 -0.29945767 0.027398828 -0.39907008 0.02746946 -0.50575745 0.027229015
		 -0.56767666 0.029081646 -0.57918531 0.011075202 0.19543144 0.13470435 0.18332392
		 0.14674589 0.066052623 0.090587169 -0.031571377 0.07079301 -0.13568971 0.074579962
		 -0.2483699 0.078766353 -0.34957123 0.077239402 -0.45258492 0.080692835 -0.55580187
		 0.077000804 0.27123201 0.21092007 0.25912452 0.2229616 0.12995237 0.15483686 0.02687091
		 0.12955543 -0.085808344 0.12473454 -0.19443074 0.13300097 -0.29848349 0.12860699
		 -0.40308607 0.13046277 -0.50262928 0.13046461 -0.57904482 0.040387936 -0.56717002
		 0.08830703 0.25624812 0.262712 0.24300042 0.27588749 0.22824755 0.25367042 0.090770669
		 0.19380516 -0.027366031 0.18349689 -0.14454934 0.1831556 -0.2445443 0.18284154 -0.35199839
		 0.18183029 -0.45313042 0.18023455 -0.51399744 0.14177078 0.35008854 0.29020852 0.3379811
		 0.30225003 0.22481629 0.30067861 0.14973506 0.25309253;
	setAttr ".uvtk[250:499]" 0.036533721 0.24774665 -0.086107053 0.24191791 -0.19466296
		 0.23299617 -0.29805917 0.23606491 -0.40204275 0.23160207 -0.46968216 0.19669622 0.40142488
		 0.3468065 0.39180762 0.35637137 0.30710411 0.33295876 0.21610036 0.31982124 0.095498152
		 0.30703402 -0.022207249 0.30616766 -0.1362206 0.2917586 -0.2481778 0.28621954 -0.34810352
		 0.2858367 -0.41072077 0.24023288 0.45170307 0.40006381 0.44343758 0.40828413 0.36093062
		 0.38708019 0.2679224 0.37192708 0.16186342 0.37376285 0.036757179 0.36545509 -0.072320856
		 0.35600835 -0.18973544 0.34498185 -0.29822218 0.33599126 -0.36067051 0.29833519 0.50754732
		 0.45105824 0.4967041 0.46184239 0.41256058 0.43899292 0.32174891 0.42604846 0.21368542
		 0.42586863 0.10312248 0.43218386 -0.013356436 0.41529566 -0.12583575 0.4092316 -0.22654194
		 0.38158792 -0.31477392 0.35245281 0.52876306 0.46986157 0.51665556 0.48190305 0.46582711
		 0.49255121 0.37337893 0.47796124 0.26751196 0.47998995 0.15494439 0.48428965 0.053008862
		 0.48202443 -0.066871323 0.46851903 -0.1758801 0.45900339 -0.23669162 0.39168233 0.48577857
		 0.51261187 0.42664546 0.53151941 0.31914192 0.53190267 0.20877096 0.53841102 0.10483087
		 0.53413022 -0.0005059801 0.5352478 -0.11691568 0.51829088 -0.19243184 0.475465 0.4465968
		 0.55158013 0.37240845 0.5854609 0.26040095 0.59032381 0.15865734 0.58825171 0.05131603
		 0.58735359 -0.050550334 0.58501959 -0.13346741 0.53475237 0.38804644 0.60118461 0.31366748
		 0.64388204 0.21028736 0.64016438 0.10514254 0.64147496 0.0012716688 0.63712537 -0.061984695
		 0.59639156 0.33361888 0.66394269 0.26355392 0.69372261 0.15677246 0.69338775 0.055098183
		 0.69124675 -0.01528012 0.65358698 0.27800941 0.70825732 0.21003899 0.74694598 0.1067282
		 0.74315953 0.041657992 0.7046138 0.22556385 0.76255584 0.15999469 0.79671776 0.097082086
		 0.75275314 0.17994609 0.81677842 0.15034845 0.80631137 0.16339433 0.83324003 -0.20514642
		 -0.4736571 -0.17211758 -0.44044736 -0.19465654 -0.41803119 -0.22768538 -0.45124093
		 -0.17426963 -0.50436568 -0.14124079 -0.47115597 -0.12089155 -0.38894078 -0.14343052
		 -0.36652461 -0.13508792 -0.54333401 -0.10205907 -0.51012421 -0.090014763 -0.41964939
		 -0.067718886 -0.33547691 -0.090257831 -0.31306067 -0.080850996 -0.5972755 -0.047822155
		 -0.56406569 -0.050833054 -0.45861766 -0.036842097 -0.36618549 -0.018220149 -0.28570709
		 -0.040759135 -0.26329085 -0.022109907 -0.65569663 0.010918926 -0.62248683 0.0034038611
		 -0.51255918 0.0023396201 -0.40515378 0.012656633 -0.31641567 0.032867707 -0.23433939
		 0.010328744 -0.21192318 0.028003741 -0.7055372 0.061032578 -0.67232752 0.062144957
		 -0.57098031 0.056576528 -0.45909527 0.051838346 -0.35538396 0.063744254 -0.26504824
		 0.086806782 -0.18010488 0.064267792 -0.15768871 0.081518553 -0.75876057 0.11454739
		 -0.72555089 0.11225861 -0.620821 0.11531762 -0.51751637 0.10607526 -0.40932545 0.10292596
		 -0.3040165 0.11768357 -0.21081349 0.13668811 -0.12995034 0.11414916 -0.10753418 0.14293422
		 -0.76111948 0.16796423 -0.73595238 0.16577341 -0.67404425 0.16543126 -0.56735706
		 0.16481638 -0.46774659 0.15716287 -0.35795799 0.1568653 -0.24978176 0.16756493 -0.16065896
		 0.19513059 -0.071187839 0.17259166 -0.048771605 0.16752928 -0.76865554 0.20513797
		 -0.77292359 0.21581784 -0.72381604 0.21894607 -0.62058032 0.21493 -0.51758718 0.215904
		 -0.41637912 0.21110222 -0.30372328 0.20674661 -0.19962725 0.22600737 -0.10189639
		 0.28152478 0.015679512 0.25898582 0.03809572 0.24485493 -0.75269496 0.26899052 -0.6703521
		 0.26844484 -0.57081056 0.26601762 -0.46621981 0.26984328 -0.36214441 0.26098359 -0.25356874
		 0.26518911 -0.14086469 0.28990722 -0.037646696 0.35732549 0.091895349 0.33478647
		 0.11431158 0.29802758 -0.69923103 0.31848925 -0.62058234 0.31953269 -0.5194428 0.31995696
		 -0.41198507 0.31972462 -0.31198987 0.319426 -0.19480619 0.32908893 -0.076614961 0.38820231
		 0.061186768 0.38435996 0.11907792 0.36182094 0.1414941 0.34752631 -0.64946127 0.36957711
		 -0.5692147 0.3734718 -0.46520838 0.3698383 -0.36183053 0.37816715 -0.25322732 0.38332582
		 -0.13055643 0.38805324 -0.017327681 0.41523677 0.088369317 0.4361819 0.17118368 0.41364288
		 0.19359988 0.39861423 -0.59809363 0.42351621 -0.5149802 0.42335314 -0.41505384 0.42828077
		 -0.30306798 0.44206691 -0.18897757 0.44229013 -0.071269184 0.45441848 0.049401037
		 0.46705872 0.14047509 0.49000847 0.22530505 0.46746951 0.24772125 0.45255327 -0.54385912
		 0.47339737 -0.46482548 0.48179561 -0.35629129 0.49218059 -0.23881823 0.50103122 -0.12969032
		 0.50865537 -0.0045404658 0.50624043 0.10150681 0.52088523 0.19459644 0.54163849 0.27721786
		 0.51909953 0.2996341 0.50243461 -0.49370459 0.53183997 -0.40606311 0.54569536 -0.29204154
		 0.55114484 -0.17953098 0.5673964 -0.062961608 0.56047732 0.047565319 0.56006694 0.15562817
		 0.57251549 0.24650949 0.5949049 0.33077601 0.57236594 0.35319221 0.56087708 -0.43494204
		 0.5957396 -0.34181318 0.60465968 -0.23275429 0.61751008 -0.11280227 0.61921835 -0.010855827
		 0.61430389 0.10168669 0.6116972 0.2075412 0.62578177 0.30006742 0.63155639 0.36762822
		 0.60901743 0.39004445 0.62477684 -0.37069228 0.65470392 -0.28252593 0.67102492 -0.16602558
		 0.66933203 -0.060696483 0.67304492 0.043265551 0.66593409 0.15359971 0.66496336 0.26109913
		 0.66243315 0.33691964 0.68374115 -0.31140503 0.72106916 -0.21579722 0.72284687 -0.11391979
		 0.7231586 -0.0065751076 0.72467518 0.095178582 0.71920031 0.20715766 0.70161486 0.29795134
		 0.75010639 -0.24467632 0.7728911 -0.16369143 0.77667344 -0.059798419 0.77478886 0.045337923
		 0.77794135 0.14873652 0.75585181 0.24400985 0.80192834 -0.19257054 0.82671785 -0.10957024
		 0.82830346 -0.0078855902 0.82805502 0.098895855 0.81459284 0.18558872 0.85575491
		 -0.13844916 0.87834787 -0.057657406 0.88156986 0.045672547 0.86470652 0.13574806
		 0.90738493 -0.086536333 0.93161428 -0.0040992647 0.91822135 0.082524747 0.96065134
		 -0.032978196;
	setAttr ".uvtk[500:501]" 0.96826577 0.032752931 0.99730283 0.0038740034;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "027F097D-4F49-50F3-3FA6-1FB6C3256FE2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -273.80951292931132 -399.99998410542861 ;
	setAttr ".tgi[0].vh" -type "double2" 157.14285089856131 396.42855567591596 ;
	setAttr -s 36 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 94.285713195800781;
	setAttr ".tgi[0].ni[0].y" 151.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -1668.5714111328125;
	setAttr ".tgi[0].ni[1].y" 670;
	setAttr ".tgi[0].ni[1].nvs" 1922;
	setAttr ".tgi[0].ni[2].x" -520;
	setAttr ".tgi[0].ni[2].y" 128.57142639160156;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 802.85711669921875;
	setAttr ".tgi[0].ni[3].y" 550;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[4].y" 202.85714721679688;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[5].y" 355.71429443359375;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" 401.42855834960938;
	setAttr ".tgi[0].ni[6].y" 128.57142639160156;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[7].y" -347.14285278320313;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[8].y" 540;
	setAttr ".tgi[0].ni[8].nvs" 1922;
	setAttr ".tgi[0].ni[9].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[9].y" 891.4285888671875;
	setAttr ".tgi[0].ni[9].nvs" 1922;
	setAttr ".tgi[0].ni[10].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[10].y" -622.85711669921875;
	setAttr ".tgi[0].ni[10].nvs" 1922;
	setAttr ".tgi[0].ni[11].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[11].y" 527.14288330078125;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[12].y" 351.42855834960938;
	setAttr ".tgi[0].ni[12].nvs" 1922;
	setAttr ".tgi[0].ni[13].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[13].y" 118.57142639160156;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" -212.85714721679688;
	setAttr ".tgi[0].ni[14].y" 151.42857360839844;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[15].y" 41.428569793701172;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[16].y" -775.71429443359375;
	setAttr ".tgi[0].ni[16].nvs" 1922;
	setAttr ".tgi[0].ni[17].x" 188.57142639160156;
	setAttr ".tgi[0].ni[17].y" 268.57144165039063;
	setAttr ".tgi[0].ni[17].nvs" 1922;
	setAttr ".tgi[0].ni[18].x" -118.57142639160156;
	setAttr ".tgi[0].ni[18].y" 897.14288330078125;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[19].y" -272.85714721679688;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" -425.71429443359375;
	setAttr ".tgi[0].ni[20].y" 841.4285888671875;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[21].y" -457.14285278320313;
	setAttr ".tgi[0].ni[21].nvs" 1922;
	setAttr ".tgi[0].ni[22].x" 188.57142639160156;
	setAttr ".tgi[0].ni[22].y" 820;
	setAttr ".tgi[0].ni[22].nvs" 1922;
	setAttr ".tgi[0].ni[23].x" 495.71429443359375;
	setAttr ".tgi[0].ni[23].y" 918.5714111328125;
	setAttr ".tgi[0].ni[23].nvs" 1922;
	setAttr ".tgi[0].ni[24].x" -118.57142639160156;
	setAttr ".tgi[0].ni[24].y" 634.28570556640625;
	setAttr ".tgi[0].ni[24].nvs" 1922;
	setAttr ".tgi[0].ni[25].x" -732.85711669921875;
	setAttr ".tgi[0].ni[25].y" 742.85711669921875;
	setAttr ".tgi[0].ni[25].nvs" 1922;
	setAttr ".tgi[0].ni[26].x" -1040;
	setAttr ".tgi[0].ni[26].y" 695.71429443359375;
	setAttr ".tgi[0].ni[26].nvs" 1922;
	setAttr ".tgi[0].ni[27].x" 495.71429443359375;
	setAttr ".tgi[0].ni[27].y" 55.714286804199219;
	setAttr ".tgi[0].ni[27].nvs" 1922;
	setAttr ".tgi[0].ni[28].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[28].y" -641.4285888671875;
	setAttr ".tgi[0].ni[28].nvs" 1922;
	setAttr ".tgi[0].ni[29].x" 802.85711669921875;
	setAttr ".tgi[0].ni[29].y" 150;
	setAttr ".tgi[0].ni[29].nvs" 1922;
	setAttr ".tgi[0].ni[30].x" -1347.142822265625;
	setAttr ".tgi[0].ni[30].y" 665.71429443359375;
	setAttr ".tgi[0].ni[30].nvs" 1922;
	setAttr ".tgi[0].ni[31].x" -1654.2857666015625;
	setAttr ".tgi[0].ni[31].y" 647.14288330078125;
	setAttr ".tgi[0].ni[31].nvs" 1922;
	setAttr ".tgi[0].ni[32].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[32].y" -120;
	setAttr ".tgi[0].ni[32].nvs" 1922;
	setAttr ".tgi[0].ni[33].x" 1475.7142333984375;
	setAttr ".tgi[0].ni[33].y" 715.71429443359375;
	setAttr ".tgi[0].ni[33].nvs" 1922;
	setAttr ".tgi[0].ni[34].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[34].y" 737.14288330078125;
	setAttr ".tgi[0].ni[34].nvs" 1922;
	setAttr ".tgi[0].ni[35].x" 1154.2857666015625;
	setAttr ".tgi[0].ni[35].y" -57.142856597900391;
	setAttr ".tgi[0].ni[35].nvs" 1922;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV1.out" "pCubeShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyTweak1.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak1.ip";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape1.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape1.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCubeShape1.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape1.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape1.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape1.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCubeShape1.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "pCubeShape1.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCubeShape1.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCubeShape1.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "pCubeShape1.wm" "polySplitRing23.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pCubeShape1.wm" "polySplitRing24.mp";
connectAttr "polyTweak2.out" "polyMapDel1.ip";
connectAttr "polySplitRing24.out" "polyTweak2.ip";
connectAttr "polyMapDel1.out" "polyAutoProj1.ip";
connectAttr "pCubeShape1.wm" "polyAutoProj1.mp";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCubeShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of final_plaque.ma
