//Maya ASCII 2019 scene
//Name: Vase Model with Mel 1.ma
//Last modified: Sat, Aug 24, 2019 07:00:28 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17134)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9BA1885F-4153-65F8-CD04-DDBDF48D6790";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.5249053772367542 5.6734359986494383 6.5303905459464229 ;
	setAttr ".r" -type "double3" -34.538352729642227 31.000000000002284 -1.8552706565324977e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "819A085C-4264-453B-6C29-60B22C60F681";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.5403137340369675;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "01341134-451D-F182-E5F6-0784363BCE6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FA92EAF1-4EF8-05E5-E79D-2BA7E91C17BD";
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
	rename -uid "36B266D2-4BFB-9936-F597-0FBCC62C9B4F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EB59B7FA-44DB-1554-419D-239E482BA97C";
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
	rename -uid "10F0A75E-464F-3391-B1E6-6983356B936A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D22CCACC-49F3-672E-38E0-A5BB3C86D135";
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
createNode transform -n "vase_model";
	rename -uid "E566032F-40D5-704E-A281-4B909FC7DAFC";
	setAttr ".t" -type "double3" -2.4142202846106713 0 0.131007 ;
	setAttr ".s" -type "double3" 0.705931 1 0.705931 ;
createNode mesh -n "vase_modelShape" -p "vase_model";
	rename -uid "3B469E97-4B5A-AEAC-5C91-ABA073BF80CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[321:341]" -type "float3"  -0.20215315 -0.86625898 0.065683544 
		-0.17196171 -0.86625898 0.1249375 0 -0.86625898 0 -0.1249375 -0.86625898 0.17196171 
		-0.065683536 -0.86625898 0.2021531 0 -0.86625898 0.2125563 0.065683536 -0.86625898 
		0.2021531 0.12493747 -0.86625898 0.17196169 0.17196171 -0.86625898 0.12493747 0.2021531 
		-0.86625898 0.065683514 0.2125563 -0.86625898 0 0.2021531 -0.86625898 -0.065683492 
		0.17196167 -0.86625898 -0.12493745 0.12493745 -0.86625898 -0.17196167 0.065683506 
		-0.86625898 -0.20215306 1.0696978e-08 -0.86625898 -0.21255626 -0.065683477 -0.86625898 
		-0.20215306 -0.12493743 -0.86625898 -0.17196167 -0.17196162 -0.86625898 -0.12493743 
		-0.20215301 -0.86625898 -0.065683477 -0.21255626 -0.86625898 0;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder1";
	rename -uid "4DF940BF-4AD6-0639-3D9F-4D97AC04C8D6";
	setAttr ".s" -type "double3" 0.685696 1 0.685696 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "78F28633-442D-4E8C-70D1-16B285645076";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "02499A1C-4C66-E01C-C53B-B5829DFE254C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D89928F3-42B1-6DCB-562D-9E94E1A54F29";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CEA1BF89-42DA-8AB9-8398-E2AE56BB94A7";
createNode displayLayerManager -n "layerManager";
	rename -uid "772DDD44-46A0-F165-62D8-37B63AC7BFC5";
createNode displayLayer -n "defaultLayer";
	rename -uid "A1421F9C-42F7-2B6D-9230-D5ABA16C93D5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9F3E2F82-4A5A-1350-969D-DB9819AD9E1A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4E0A99C8-48A5-711B-E9F1-5D86A435FB0F";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "54356093-45A0-0BB0-24EC-9DBDBBF65EB5";
	setAttr ".sh" 5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "77686DB9-4F72-1674-ADBB-10A18808C841";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151508 0.63095599 0.13100687 ;
	setAttr ".rs" 43149;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.90744616830706593 0.63095599412918091 -0.57492433661413189 ;
	setAttr ".cbx" -type "double3" 0.504416 0.63095599412918091 0.83693808415353299 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "A1108391-4609-8890-2ADE-ED8794BC9EEF";
	setAttr ".uopa" yes;
	setAttr -s 81 ".tk";
	setAttr ".tk[0]" -type "float3" -0.26904455 0 0.087417871 ;
	setAttr ".tk[1]" -type "float3" -0.22886297 0 0.16627868 ;
	setAttr ".tk[2]" -type "float3" -0.16627868 0 0.22886296 ;
	setAttr ".tk[3]" -type "float3" -0.087417863 0 0.26904452 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.28289014 ;
	setAttr ".tk[5]" -type "float3" 0.087417863 0 0.26904449 ;
	setAttr ".tk[6]" -type "float3" 0.16627863 0 0.22886291 ;
	setAttr ".tk[7]" -type "float3" 0.22886288 0 0.16627862 ;
	setAttr ".tk[8]" -type "float3" 0.26904446 0 0.087417834 ;
	setAttr ".tk[9]" -type "float3" 0.28289008 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.26904446 0 -0.087417834 ;
	setAttr ".tk[11]" -type "float3" 0.22886287 0 -0.1662786 ;
	setAttr ".tk[12]" -type "float3" 0.1662786 0 -0.22886285 ;
	setAttr ".tk[13]" -type "float3" 0.087417834 0 -0.26904443 ;
	setAttr ".tk[14]" -type "float3" 8.4307787e-09 0 -0.28289002 ;
	setAttr ".tk[15]" -type "float3" -0.087417811 0 -0.2690444 ;
	setAttr ".tk[16]" -type "float3" -0.16627857 0 -0.22886284 ;
	setAttr ".tk[17]" -type "float3" -0.22886282 0 -0.16627859 ;
	setAttr ".tk[18]" -type "float3" -0.2690444 0 -0.087417819 ;
	setAttr ".tk[19]" -type "float3" -0.28288999 0 0 ;
	setAttr ".tk[60]" -type "float3" -0.27323994 0 0.088781036 ;
	setAttr ".tk[61]" -type "float3" -0.23243178 0 0.16887155 ;
	setAttr ".tk[62]" -type "float3" -0.16887155 0 0.23243177 ;
	setAttr ".tk[63]" -type "float3" -0.088781029 0 0.27323991 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.28730142 ;
	setAttr ".tk[65]" -type "float3" 0.088781029 0 0.27323988 ;
	setAttr ".tk[66]" -type "float3" 0.16887154 0 0.23243171 ;
	setAttr ".tk[67]" -type "float3" 0.23243169 0 0.16887152 ;
	setAttr ".tk[68]" -type "float3" 0.27323985 0 0.088781007 ;
	setAttr ".tk[69]" -type "float3" 0.28730136 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.27323985 0 -0.088781007 ;
	setAttr ".tk[71]" -type "float3" 0.23243169 0 -0.16887149 ;
	setAttr ".tk[72]" -type "float3" 0.16887149 0 -0.23243168 ;
	setAttr ".tk[73]" -type "float3" 0.088781007 0 -0.27323982 ;
	setAttr ".tk[74]" -type "float3" 8.562246e-09 0 -0.28730133 ;
	setAttr ".tk[75]" -type "float3" -0.088780977 0 -0.27323979 ;
	setAttr ".tk[76]" -type "float3" -0.16887146 0 -0.23243165 ;
	setAttr ".tk[77]" -type "float3" -0.23243164 0 -0.16887148 ;
	setAttr ".tk[78]" -type "float3" -0.27323976 0 -0.088780984 ;
	setAttr ".tk[79]" -type "float3" -0.2873013 0 0 ;
	setAttr ".tk[80]" -type "float3" -0.27502003 -0.21411 0.089359425 ;
	setAttr ".tk[81]" -type "float3" -0.23394603 -0.21411 0.16997172 ;
	setAttr ".tk[82]" -type "float3" -0.16997172 -0.21411 0.23394601 ;
	setAttr ".tk[83]" -type "float3" -0.089359418 -0.21411 0.27502 ;
	setAttr ".tk[84]" -type "float3" 0 -0.21411 0.28917313 ;
	setAttr ".tk[85]" -type "float3" 0.089359418 -0.21411 0.27502 ;
	setAttr ".tk[86]" -type "float3" 0.16997169 -0.21411 0.23394597 ;
	setAttr ".tk[87]" -type "float3" 0.23394594 -0.21411 0.16997167 ;
	setAttr ".tk[88]" -type "float3" 0.27501994 -0.21411 0.089359388 ;
	setAttr ".tk[89]" -type "float3" 0.28917307 -0.21411 0 ;
	setAttr ".tk[90]" -type "float3" 0.27501994 -0.21411 -0.089359388 ;
	setAttr ".tk[91]" -type "float3" 0.23394592 -0.21411 -0.16997166 ;
	setAttr ".tk[92]" -type "float3" 0.16997166 -0.21411 -0.23394591 ;
	setAttr ".tk[93]" -type "float3" 0.089359388 -0.21411 -0.27501991 ;
	setAttr ".tk[94]" -type "float3" 8.6180272e-09 -0.21411 -0.28917304 ;
	setAttr ".tk[95]" -type "float3" -0.089359365 -0.21411 -0.27501988 ;
	setAttr ".tk[96]" -type "float3" -0.16997162 -0.21411 -0.23394589 ;
	setAttr ".tk[97]" -type "float3" -0.23394588 -0.21411 -0.16997164 ;
	setAttr ".tk[98]" -type "float3" -0.27501988 -0.21411 -0.089359373 ;
	setAttr ".tk[99]" -type "float3" -0.28917301 -0.21411 0 ;
	setAttr ".tk[100]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[102]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[106]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[108]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[110]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[114]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[115]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[116]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[117]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[119]" -type "float3" 0 -0.36904401 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.36904401 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "328DD865-40E9-E647-0950-5994D1349E3D";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151508 0.63095599 0.13100687 ;
	setAttr ".rs" 53735;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.90744616830706593 0.63095599412918091 -0.57492433661413189 ;
	setAttr ".cbx" -type "double3" 0.504416 0.63095599412918091 0.836938 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "6A91C294-456C-7765-D917-4F9968996B33";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151508 0.63095599 0.13100685 ;
	setAttr ".rs" 61259;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.78799275284528725 0.63095599412918091 -0.45547087907558681 ;
	setAttr ".cbx" -type "double3" 0.3849625845382213 0.63095599412918091 0.71748458453822128 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "CF99B9C2-4B5E-CC54-AC6B-F696670D32FD";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[141:161]" -type "float3"  -0.16093217 0 0.052290034
		 -0.13689707 0 0.099461555 0 0 0 -0.099461555 0 0.13689707 -0.05229003 0 0.16093215
		 0 0 0.16921408 0.05229003 0 0.16093215 0.099461533 0 0.13689706 0.13689707 0 0.099461511
		 0.16093214 0 0.052290015 0.16921404 0 0 0.16093214 0 -0.052290015 0.13689703 0 -0.099461511
		 0.099461511 0 -0.13689701 0.052290007 0 -0.16093209 5.04297e-09 0 -0.169214 -0.052289996
		 0 -0.16093209 -0.099461496 0 -0.13689701 -0.13689697 0 -0.099461496 -0.16093206 0
		 -0.052289996 -0.169214 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "D5F3F2D1-48A2-E1AB-BCA4-DDAE641B6BC8";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151508 0.63095599 0.13100684 ;
	setAttr ".rs" 36601;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.78799275284528725 0.63095599412918091 -0.45547083699882029 ;
	setAttr ".cbx" -type "double3" 0.3849625845382213 0.63095599412918091 0.71748458453822128 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "DAE66084-43E9-4092-2E48-39B29172C236";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151506 0.55835599 0.13100694 ;
	setAttr ".rs" 42777;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.6195621915718913 0.55835598707199097 -0.28704019157189131 ;
	setAttr ".cbx" -type "double3" 0.21653206534159181 0.55835598707199097 0.54905406534159185 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "0AA58F71-4ABF-0F3F-9FA0-09AE9B9298A7";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[181:201]" -type "float3"  -0.22691597 -0.0726 0.07372947
		 -0.19302624 -0.0726 0.14024177 0 -0.0726 0 -0.14024177 -0.0726 0.19302624 -0.073729463
		 -0.0726 0.22691594 0 -0.0726 0.2385935 0.073729463 -0.0726 0.22691594 0.14024174
		 -0.0726 0.1930262 0.19302624 -0.0726 0.14024173 0.22691594 -0.0726 0.073729441 0.2385935
		 -0.0726 0 0.22691594 -0.0726 -0.073729433 0.19302617 -0.0726 -0.14024173 0.14024173
		 -0.0726 -0.19302617 0.073729433 -0.0726 -0.22691587 8.5589287e-09 -0.0726 -0.23859343
		 -0.073729411 -0.0726 -0.22691587 -0.14024168 -0.0726 -0.19302617 -0.1930261 -0.0726
		 -0.14024168 -0.22691584 -0.0726 -0.073729411 -0.23859343 -0.0726 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "0CC9E865-42A1-1188-B4BA-AAB858DF046C";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151512 0.55835605 0.13100684 ;
	setAttr ".rs" 48600;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.61956214949512478 0.55835598707199097 -0.2870401494951248 ;
	setAttr ".cbx" -type "double3" 0.21653206534159181 0.55835598707199097 0.54905406534159185 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "90D7192E-43C6-FC49-B3C6-BBAA35C727A5";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151508 0.63095599 0.13100687 ;
	setAttr ".rs" 44775;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.61956214949512478 0.55835598707199097 -0.2870401494951248 ;
	setAttr ".cbx" -type "double3" 0.21653206534159181 0.55835598707199097 0.54905406534159185 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "8ED37291-4F4A-FB7C-8B2C-C0880AF496DC";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151508 0.63095599 0.13100685 ;
	setAttr ".rs" 56881;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.61956214949512478 0.55835598707199097 -0.2870401494951248 ;
	setAttr ".cbx" -type "double3" 0.21653206534159181 0.55835598707199097 0.54905406534159185 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "723F00DB-4AB9-DB7B-A9F0-EC9D941512EF";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151506 0.55835599 0.13100694 ;
	setAttr ".rs" 58540;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.61956214949512478 0.55835598707199097 -0.2870401494951248 ;
	setAttr ".cbx" -type "double3" 0.21653206534159181 0.55835598707199097 0.54905406534159185 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "4719ECC9-4EEC-0143-EA90-348A6160FC6D";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151505 0.55835599 0.13100696 ;
	setAttr ".rs" 38411;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.61956214949512478 0.55835598707199097 -0.2870401494951248 ;
	setAttr ".cbx" -type "double3" 0.21653206534159181 0.55835598707199097 0.54905406534159185 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "7E6196BF-4986-935F-C3DF-8CA59E7F5ABB";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.70593099999999998 0 0 0 0 1 0 0 0 0 0.70593099999999998 0
		 -0.201515 0 0.13100700000000001 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20151505 0.55835599 0.13100696 ;
	setAttr ".rs" 41787;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.61956214949512478 0.55835598707199097 -0.2870401494951248 ;
	setAttr ".cbx" -type "double3" 0.21653206534159181 0.55835598707199097 0.54905406534159185 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C7285C59-49F7-949D-BE61-208131E1E11C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1272\n            -height 732\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1272\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1272\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2B03B31A-41AF-05EC-3E5E-4988778AEA3E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "6E48178D-4FB2-180D-189A-2B9D45EF5B7E";
	setAttr ".sh" 5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "157653A4-47A2-7A57-767C-CBBEBACE70E1";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.75549388 -1.7881393e-07 ;
	setAttr ".rs" 40258;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000002384185791 0.7554938793182373 -1.0000004768371582 ;
	setAttr ".cbx" -type "double3" 1 0.7554938793182373 1.0000001192092896 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "8282A12E-492D-5D8B-3E96-BA90130C5D02";
	setAttr ".uopa" yes;
	setAttr -s 81 ".tk";
	setAttr ".tk[0]" -type "float3" -0.25614065 0 0.083225079 ;
	setAttr ".tk[1]" -type "float3" -0.21788625 0 0.15830354 ;
	setAttr ".tk[2]" -type "float3" -0.15830363 0 0.21788616 ;
	setAttr ".tk[3]" -type "float3" -0.083225146 0 0.25614053 ;
	setAttr ".tk[4]" -type "float3" -3.2105607e-08 0 0.26932207 ;
	setAttr ".tk[5]" -type "float3" 0.083225086 0 0.2561405 ;
	setAttr ".tk[6]" -type "float3" 0.15830353 0 0.21788611 ;
	setAttr ".tk[7]" -type "float3" 0.21788611 0 0.1583035 ;
	setAttr ".tk[8]" -type "float3" 0.25614047 0 0.083225042 ;
	setAttr ".tk[9]" -type "float3" 0.26932204 0 -4.8158544e-08 ;
	setAttr ".tk[10]" -type "float3" 0.25614047 0 -0.083225138 ;
	setAttr ".tk[11]" -type "float3" 0.21788609 0 -0.15830357 ;
	setAttr ".tk[12]" -type "float3" 0.1583035 0 -0.21788616 ;
	setAttr ".tk[13]" -type "float3" 0.083225064 0 -0.25614053 ;
	setAttr ".tk[14]" -type "float3" -2.4079185e-08 0 -0.26932207 ;
	setAttr ".tk[15]" -type "float3" -0.083225101 0 -0.2561405 ;
	setAttr ".tk[16]" -type "float3" -0.15830353 0 -0.21788613 ;
	setAttr ".tk[17]" -type "float3" -0.21788611 0 -0.15830356 ;
	setAttr ".tk[18]" -type "float3" -0.25614047 0 -0.083225124 ;
	setAttr ".tk[19]" -type "float3" -0.26932204 0 -4.8158544e-08 ;
	setAttr ".tk[60]" -type "float3" -0.32314929 0 0.10499749 ;
	setAttr ".tk[61]" -type "float3" -0.2748872 0 0.19971715 ;
	setAttr ".tk[62]" -type "float3" -0.19971724 0 0.27488708 ;
	setAttr ".tk[63]" -type "float3" -0.10499758 0 0.32314914 ;
	setAttr ".tk[64]" -type "float3" -4.0504716e-08 0 0.33977911 ;
	setAttr ".tk[65]" -type "float3" 0.1049975 0 0.32314911 ;
	setAttr ".tk[66]" -type "float3" 0.19971712 0 0.27488703 ;
	setAttr ".tk[67]" -type "float3" 0.27488703 0 0.19971709 ;
	setAttr ".tk[68]" -type "float3" 0.32314909 0 0.10499745 ;
	setAttr ".tk[69]" -type "float3" 0.33977905 0 -6.0757245e-08 ;
	setAttr ".tk[70]" -type "float3" 0.32314909 0 -0.10499757 ;
	setAttr ".tk[71]" -type "float3" 0.274887 0 -0.19971718 ;
	setAttr ".tk[72]" -type "float3" 0.19971709 0 -0.27488708 ;
	setAttr ".tk[73]" -type "float3" 0.10499747 0 -0.32314914 ;
	setAttr ".tk[74]" -type "float3" -3.0378512e-08 0 -0.33977911 ;
	setAttr ".tk[75]" -type "float3" -0.10499752 0 -0.32314911 ;
	setAttr ".tk[76]" -type "float3" -0.19971712 0 -0.27488706 ;
	setAttr ".tk[77]" -type "float3" -0.27488703 0 -0.19971716 ;
	setAttr ".tk[78]" -type "float3" -0.32314909 0 -0.10499755 ;
	setAttr ".tk[79]" -type "float3" -0.33977905 0 -6.0757245e-08 ;
	setAttr ".tk[80]" -type "float3" -0.32314929 -0.147542 0.10499749 ;
	setAttr ".tk[81]" -type "float3" -0.2748872 -0.147542 0.19971715 ;
	setAttr ".tk[82]" -type "float3" -0.19971724 -0.147542 0.27488708 ;
	setAttr ".tk[83]" -type "float3" -0.10499758 -0.147542 0.32314914 ;
	setAttr ".tk[84]" -type "float3" -4.0504716e-08 -0.147542 0.33977911 ;
	setAttr ".tk[85]" -type "float3" 0.1049975 -0.147542 0.32314911 ;
	setAttr ".tk[86]" -type "float3" 0.19971712 -0.147542 0.27488703 ;
	setAttr ".tk[87]" -type "float3" 0.27488703 -0.147542 0.19971709 ;
	setAttr ".tk[88]" -type "float3" 0.32314909 -0.147542 0.10499745 ;
	setAttr ".tk[89]" -type "float3" 0.33977905 -0.147542 -6.0757245e-08 ;
	setAttr ".tk[90]" -type "float3" 0.32314909 -0.147542 -0.10499757 ;
	setAttr ".tk[91]" -type "float3" 0.274887 -0.147542 -0.19971718 ;
	setAttr ".tk[92]" -type "float3" 0.19971709 -0.147542 -0.27488708 ;
	setAttr ".tk[93]" -type "float3" 0.10499747 -0.147542 -0.32314914 ;
	setAttr ".tk[94]" -type "float3" -3.0378512e-08 -0.147542 -0.33977911 ;
	setAttr ".tk[95]" -type "float3" -0.10499752 -0.147542 -0.32314911 ;
	setAttr ".tk[96]" -type "float3" -0.19971712 -0.147542 -0.27488706 ;
	setAttr ".tk[97]" -type "float3" -0.27488703 -0.147542 -0.19971716 ;
	setAttr ".tk[98]" -type "float3" -0.32314909 -0.147542 -0.10499755 ;
	setAttr ".tk[99]" -type "float3" -0.33977905 -0.147542 -6.0757245e-08 ;
	setAttr ".tk[100]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[102]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[106]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[108]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[110]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[114]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[115]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[116]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[117]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[119]" -type "float3" 0 -0.24450609 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.24450609 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "5C1223C1-4F72-3EC4-92C6-7DAA0AF13FA3";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.1559833e-08 0.75549418 -1.2233974e-07 ;
	setAttr ".rs" 63349;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000002384185791 0.7554938793182373 -1.0000004768371582 ;
	setAttr ".cbx" -type "double3" 1 0.7554938793182373 1.0000001192092896 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "9A7F752B-4B87-76C1-A27A-C09299F0187E";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.75549388 -1.4901161e-07 ;
	setAttr ".rs" 35120;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.71349918842315674 0.7554938793182373 -0.71349936723709106 ;
	setAttr ".cbx" -type "double3" 0.71349895000457764 0.7554938793182373 0.71349906921386719 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "890BF4BA-468E-2107-234C-F4AD4A95AD38";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[141:161]" -type "float3"  -0.27247885 0 0.0885337 -0.23178437
		 0 0.16840112 -3.5050533e-08 0 -3.5050533e-08 -0.1684012 0 0.23178428 -0.088533759
		 0 0.27247876 -3.5050533e-08 0 0.28650111 0.088533685 0 0.27247873 0.16840109 0 0.23178422
		 0.23178421 0 0.16840108 0.27247867 0 0.088533662 0.28650102 0 -3.5050533e-08 0.27247867
		 0 -0.088533729 0.23178419 0 -0.16840112 0.16840106 0 -0.23178425 0.088533662 0 -0.27247873
		 -2.6512136e-08 0 -0.28650108 -0.088533707 0 -0.2724787 -0.16840109 0 -0.23178424
		 -0.23178421 0 -0.16840111 -0.2724787 0 -0.088533714 -0.28650102 0 -3.5050533e-08;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "553E3051-4744-4BE8-8A09-FDA1BC62D4FC";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2233974e-07 0.75549418 -1.2233974e-07 ;
	setAttr ".rs" 55254;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.71349918842315674 0.7554938793182373 -0.71349936723709106 ;
	setAttr ".cbx" -type "double3" 0.71349895000457764 0.7554938793182373 0.71349906921386719 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "6ACF3728-43B2-D149-179A-6495DE986899";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.68693697 -1.4901161e-07 ;
	setAttr ".rs" 65515;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.47704845666885376 0.68693697452545166 -0.47704857587814331 ;
	setAttr ".cbx" -type "double3" 0.47704821825027466 0.68693697452545166 0.47704827785491943 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "81F694FB-4376-2B8E-8CA9-E4B6D8D06ECA";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[181:201]" -type "float3"  -0.22487816 -0.068556897 0.0730673
		 -0.19129281 -0.068556897 0.1389823 -2.892738e-08 -0.068556897 -3.5684543e-08 -0.13898236
		 -0.068556897 0.19129272 -0.073067352 -0.068556897 0.22487807 -2.892738e-08 -0.068556897
		 0.23645079 0.0730673 -0.068556897 0.22487807 0.13898227 -0.068556897 0.19129269 0.19129267
		 -0.068556897 0.13898225 0.22487804 -0.068556897 0.07306727 0.23645073 -0.068556897
		 -3.5684543e-08 0.22487804 -0.068556897 -0.073067345 0.19129266 -0.068556897 -0.13898231
		 0.13898224 -0.068556897 -0.1912927 0.07306727 -0.068556897 -0.22487804 -2.18806e-08
		 -0.068556897 -0.23645079 -0.073067315 -0.068556897 -0.22487804 -0.13898227 -0.068556897
		 -0.1912927 -0.19129267 -0.068556897 -0.13898228 -0.22487803 -0.068556897 -0.07306733
		 -0.23645073 -0.068556897 -3.5684543e-08;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "C4789BF4-4DC0-E970-5E2D-8F8E430A338C";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2233974e-07 0.68693727 -1.3253472e-07 ;
	setAttr ".rs" 41846;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.47704845666885376 0.68693697452545166 -0.47704857587814331 ;
	setAttr ".cbx" -type "double3" 0.47704821825027466 0.68693697452545166 0.47704827785491943 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "0320FA2C-40EF-830C-2AAB-91AAEC66C5C4";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.75549388 -1.7881393e-07 ;
	setAttr ".rs" 41379;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27882868051528931 -0.12932103872299194 -0.27882874011993408 ;
	setAttr ".cbx" -type "double3" 0.27882844209671021 -0.12932103872299194 0.27882844209671021 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "1DEAC7AA-4366-660E-FA92-0DB264503029";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[221:241]" -type "float3"  -0.18851835 -0.81625801 0.061253283
		 -0.16036329 -0.81625801 0.1165107 -2.4250205e-08 -0.81625801 -2.5678672e-08 -0.11651076
		 -0.81625801 0.16036324 -0.061253332 -0.81625801 0.18851827 -2.4250205e-08 -0.81625801
		 0.19821984 0.061253287 -0.81625801 0.18851827 0.11651067 -0.81625801 0.16036318 0.16036318
		 -0.81625801 0.11651067 0.18851824 -0.81625801 0.061253257 0.19821979 -0.81625801
		 -2.5678672e-08 0.18851824 -0.81625801 -0.061253317 0.16036317 -0.81625801 -0.11651071
		 0.11651065 -0.81625801 -0.1603632 0.061253261 -0.81625801 -0.18851824 -1.8342798e-08
		 -0.81625801 -0.19821982 -0.061253302 -0.81625801 -0.18851824 -0.11651068 -0.81625801
		 -0.1603632 -0.16036318 -0.81625801 -0.11651068 -0.18851823 -0.81625801 -0.061253306
		 -0.19821979 -0.81625801 -2.5678672e-08;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "C5AC4FDB-413E-9760-9923-D3BD14D99CF7";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.75549388 -1.4901161e-07 ;
	setAttr ".rs" 64325;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27882868051528931 -0.12932103872299194 -0.27882874011993408 ;
	setAttr ".cbx" -type "double3" 0.27882844209671021 -0.12932103872299194 0.27882844209671021 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "032FCF71-4518-9469-BC82-E9B79DC525C3";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.68693697 -1.4901161e-07 ;
	setAttr ".rs" 56257;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27882868051528931 -0.12932103872299194 -0.27882874011993408 ;
	setAttr ".cbx" -type "double3" 0.27882844209671021 -0.12932103872299194 0.27882844209671021 ;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace11.out" "vase_modelShape.i";
connectAttr "polyExtrudeFace20.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "vase_modelShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace12.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyCylinder2.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace14.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace16.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace18.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak7.ip";
connectAttr "polyExtrudeFace18.out" "polyExtrudeFace19.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polyExtrudeFace20.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace20.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "vase_modelShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Vase Model with Mel 1.ma
