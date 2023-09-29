#==============================================================================
# ■ Ahriman::ViewerManager
#------------------------------------------------------------------------------
# 　ビューアーを管理するモジュールです。ビューアー用のDSLなどもこのモジュール
# で読み込み（記述）します。
#==============================================================================

module Ahriman::ViewerManager

store_txt "actor01", <<EOF
style = cutin
アサギ通常A		=	actor01_stand_01a	:$01_actor001_action-071,$01_actor001_action-007,$01_actor001_action-068
アサギ通常B		=	actor01_stand_01b	:$01_actor001_action-072,$01_actor001_action-074,$01_actor001_action-033
アサギ通常攻撃A		=	actor01_stand_01c	:$01_actor001_action-008,$01_actor001_action-012,$01_actor001_action-014
アサギ通常攻撃B		=	actor01_stand_01d	:$01_actor001_action-011,$01_actor001_action-030,$01_actor001_action-031
アサギ通常ダメージA	=	actor01_stand_01e	:$01_actor001_action-082,$01_actor001_action-083,$01_actor001_action-084
アサギ通常ダメージB	=	actor01_stand_01f	:$01_actor001_action-081,$01_actor001_action-085,$01_actor001_action-086
アサギ通常セクハラA	=	actor01_stand_01h	:$01_actor001_action-095,$01_actor001_action-096,$01_actor001_action-097
アサギ通常セクハラB	=	actor01_stand_01i	:$01_actor001_action-099,$01_actor001_action-100,$01_actor001_action-101
アサギピンチA		=	actor01_stand_02a	:$01_actor001_action-114
アサギピンチB		=	actor01_stand_02b	:$01_actor001_action-115
アサギピンチ攻撃A	=	actor01_stand_02c	:$01_actor001_action-033,$01_actor001_action-034,$01_actor001_action-014
アサギピンチ攻撃B	=	actor01_stand_02d	:$01_actor001_action-022,$01_actor001_action-035,$01_actor001_action-037
アサギピンチダメージA	=	actor01_stand_02e	:$01_actor001_action-083,$01_actor001_action-087,$01_actor001_action-088
アサギピンチダメージB	=	actor01_stand_02f	:$01_actor001_action-081,$01_actor001_action-089,$01_actor001_action-086
アサギピンチマゾダメージ=	actor01_stand_02g	:$01_actor001_action-099,$01_actor001_action-105,$01_actor001_action-106
アサギピンチセクハラA	=	actor01_stand_02h	:$01_actor001_action-095,$01_actor001_action-098,$01_actor001_action-097
アサギピンチセクハラB	=	actor01_stand_02i	:$01_actor001_action-100,$01_actor001_action-102,$01_actor001_action-103
アサギ全裸		=	actor01_stand_03	:$01_actor001_action-036
アサギ全裸攻撃		=	actor01_stand_03c	:$01_actor001_action-052,$01_actor001_action-054,$01_actor001_action-055
アサギ全裸ダメージ	=	actor01_stand_03e	:$01_actor001_action-087,$01_actor001_action-090,$01_actor001_action-093
アサギ全裸マゾダメージ	=	actor01_stand_03g	:$01_actor001_action-094,$01_actor001_action-105,$01_actor001_action-106
アサギ全裸セクハラ	=	actor01_stand_03h	:$01_actor001_action-105,$01_actor001_action-112,$01_actor001_action-117
アサギ全裸挿入		=	actor01_cutin_02	:$01_actor001_action-118,$01_actor001_action-119,$01_actor001_action-123
アサギ全裸挿入＿輪姦	=	actor01_cutin_03b1	:$01_actor001_action-120b
アサギ奴隷		=	actor01_stand_04	:$01_actor001_action-116
アサギ奴隷攻撃		=	actor01_stand_04c	:$01_actor001_action-056,$01_actor001_action-057,$01_actor001_action-064
アサギ奴隷ダメージ	=	actor01_stand_04e2	:$01_actor001_action-091,$01_actor001_action-092,$01_actor001_action-094
アサギ奴隷マゾダメージ	=	actor01_stand_04g	:$01_actor001_action-094,$01_actor001_action-105,$01_actor001_action-091
アサギ奴隷吸収ダメージ	=	actor01_stand_04J	:$01_ecstasy_action01,$01_ecstasy_action06
アサギ奴隷セクハラ	=	actor01_stand_04h	:$01_actor001_action-108,$01_actor001_action-109,$01_actor001_action-110,$01_actor001_action-111
アサギ奴隷挿入		=	actor01_cutin_03	:$01_actor001_action-120,$01_actor001_action-121
アサギ奴隷挿入＿輪姦	=	actor01_cutin_03b2	:$01_actor001_action-120c
アサギ奴隷挿入＿拘束A	=	actor01_cutin_03c	:$01_actor001_action-120e,$01_actor001_action-121b
アサギ奴隷挿入＿拘束B	=	actor01_cutin_03f	:$01_actor001_action-121c
アサギ奴隷挿入＿種付け	=	actor01_cutin_03g	:$01_actor001_action-126,$01_actor001_action-122
アサギ奴隷挿入＿ボコォ	=	actor01_cutin_03d	:$01_actor001_action-120f,$01_actor001_action-136,$01_actor001_action-135
アサギ奴隷挿入＿触手	=	actor01_cutin_03e	:$01_actor001_action-120g,$01_actor001_action-130,$01_actor001_action-134
アサギ拘束		=	actor01_stand_10a	:$01_actor001_action-120e
アサギ自慰		=	actor01_stand_11a	:$01_actor001_action-145
アサギ白濁		=	actor01_stand_04e	:$01_actor001_action-098,$01_actor001_action-100,$01_actor001_action-115
アサギ連行A		=	actor01_stand_05	:$01_actor001_action-137
アサギ連行B		=	actor01_stand_05b	:$01_event_action02
アサギ拉致監禁		=	actor01_cutin_04a	:$01_actor001_action-138
アサギ監禁調教		=	actor01_cutin_04b	:$01_actor001_action-121c
アサギ拘束監禁		=	actor01_cutin_04c	:$01_actor001_action-143
アサギボテ腹監禁	=	actor01_cutin_04d	:$01_actor001_action-141
アサギご奉仕奴隷	=	actor01_cutin_04e	:$01_actor001_action-146
アサギ悪堕ち		=	actor01_cutin_04f	:$01_event_action01
アサギ必殺技A		=	actor01_viewer_14	:$01_actor001_action-142
アサギ必殺技B		=	actor01_viewer_15	:$01_actor001_action-067
【アサギその他】	=	spot			:$01_silence
アサギおまけA		=	actor01_stand_06c
アサギおまけB		=	actor01_stand_07c
アサギおまけC		=	actor01_stand_08c
アサギ未使用A		=	actor01_viewer_01
アサギ未使用B		=	actor01_stand_03f
アサギ未使用C		=	actor01_stand_04f
アサギ未使用D		=	actor01_viewer_12
アサギ未使用E		=	actor01_viewer_13
アサギ未使用F		=	actor01_viewer_16
アサギ初期デザイン	=	actor01_viewer_02
アサギボツ絵		=	actor01_viewer_08
アサギボツ絵		=	actor01_viewer_03
アサギボツ絵		=	actor01_viewer_04
アサギボツ絵		=	actor01_viewer_05
アサギボツ絵		=	actor01_viewer_06
アサギボツ絵		=	actor01_viewer_07
アサギボツ絵		=	actor01_viewer_09
アサギボツ絵		=	actor01_viewer_10
アサギボツ絵		=	actor01_viewer_11
EOF

store_txt "actor02", <<EOF
style = cutin
ウィップ通常A			=	actor02_stand_01a	:$02_actor002_action-005,$02_actor002_action-014,$02_actor002_action-015
ウィップ通常B			=	actor02_stand_01b	:$02_actor002_action-001,$02_actor002_action-029,$02_actor002_action-031
ウィップ通常攻撃A		=	actor02_stand_01c	:$02_actor002_action-002,$02_actor002_action-003,$02_actor002_action-010
ウィップ通常攻撃B		=	actor02_stand_01d	:$02_actor002_action-006,$02_actor002_action-009,$02_actor002_action-014
ウィップ通常ダメージA		=	actor02_stand_01e	:$02_actor002_action-074,$02_actor002_action-073,$02_actor002_action-076
ウィップ通常ダメージB		=	actor02_stand_01f	:$02_actor002_action-075,$02_actor002_action-077,$02_actor002_action-078
ウィップ通常セクハラA		=	actor02_stand_01h	:$02_actor002_action-087,$02_actor002_action-088,$02_actor002_action-089
ウィップ通常セクハラB		=	actor02_stand_01i	:$02_actor002_action-090,$02_actor002_action-091,$02_actor002_action-092
ウィップピンチA			=	actor02_stand_02a	:$02_actor002_action-111,$02_actor002_action-042,$02_actor002_action-052
ウィップピンチB			=	actor02_stand_02b	:$02_actor002_action-111,$02_actor002_action-064,$02_actor002_action-069
ウィップピンチ攻撃A		=	actor02_stand_02c	:$02_actor002_action-007,$02_actor002_action-011,$02_actor002_action-026
ウィップピンチ攻撃B		=	actor02_stand_02d	:$02_actor002_action-025,$02_actor002_action-027,$02_actor002_action-032
ウィップピンチダメージA		=	actor02_stand_02e	:$02_actor002_action-079,$02_actor002_action-080,$02_actor002_action-081
ウィップピンチダメージB		=	actor02_stand_02f	:$02_actor002_action-101,$02_actor002_action-083,$02_actor002_action-085
ウィップピンチセクハラA		=	actor02_stand_02h	:$02_actor002_action-093,$02_actor002_action-094,$02_actor002_action-096
ウィップピンチセクハラB		=	actor02_stand_02i	:$02_actor002_action-095,$02_actor002_action-097,$02_actor002_action-099
ウィップ全裸			=	actor02_stand_03	:$02_actor002_action-113,$02_actor002_action-071,$02_actor002_action-072
ウィップ全裸攻撃		=	actor02_stand_03c	:$02_actor002_action-041,$02_actor002_action-042,$02_actor002_action-044
ウィップ全裸ダメージ		=	actor02_stand_03e	:$02_actor002_action-082,$02_actor002_action-083,$02_actor002_action-084
ウィップ全裸マゾダメージ	=	actor02_stand_03g	:$02_actor002_action-121g,$02_actor002_action-091,$02_actor002_action-095
ウィップ全裸セクハラ		=	actor02_stand_03h	:$02_actor002_action-100,$02_actor002_action-101,$02_actor002_action-102
ウィップ全裸挿入		=	actor02_cutin_02	:$02_actor002_action-116,$02_actor002_action-117,$02_actor002_action-120
ウィップ全裸挿入＿輪姦		=	actor02_cutin_03b1	:$02_actor002_action-00h,$02_actor002_action-00j
ウィップ奴隷			=	actor02_stand_04	:$02_actor002_action-115,$02_actor002_action-109,$02_actor002_action-088
ウィップ奴隷攻撃		=	actor02_stand_04c	:$02_actor002_action-048,$02_actor002_action-049,$02_actor002_action-053
ウィップ奴隷ダメージ		=	actor02_stand_04e2	:$02_actor002_action-085,$02_actor002_action-086,$02_actor002_action-109
ウィップ奴隷マゾダメージ	=	actor02_stand_04g	:$02_ecstasy_action01,$02_actor002_action-106,$02_actor002_action-105
ウィップ奴隷吸収ダメージ	=	actor02_stand_04J	:$02_actor002_action-107,$02_actor002_action-108,$02_actor002_action-100
ウィップ奴隷セクハラ		=	actor02_stand_04h	:$02_actor002_action-104,$02_actor002_action-105,$02_actor002_action-106
ウィップ奴隷挿入		=	actor02_cutin_03	:$02_actor002_action-121,$02_actor002_action-122,$02_actor002_action-123
ウィップ奴隷挿入＿輪姦		=	actor02_cutin_03b2	:$02_actor002_action-00h,$02_actor002_action-00k
ウィップ奴隷挿入＿拘束A		=	actor02_cutin_03c	:$02_actor002_action-00i,$02_actor002_action-00k
ウィップ奴隷挿入＿拘束B		=	actor02_cutin_03f	:$02_actor002_action-00j,$02_actor002_action-00k
ウィップ奴隷挿入＿種付け	=	actor02_cutin_03g	:$02_actor002_action-124,$02_actor002_action-122,$02_actor002_action-143
ウィップ奴隷挿入＿ボコォ	=	actor02_cutin_03d	:$02_actor002_action-119,$02_actor002_action-134,$02_actor002_action-138
ウィップ奴隷挿入＿触手		=	actor02_cutin_03e	:$02_actor002_action-00g,$02_actor002_action-00e
ウィップ拘束			=	actor02_stand_10a	:$02_actor002_gag04
ウィップ自慰			=	actor02_stand_11a	:$02_actor002_moan04
ウィップ白濁			=	actor02_stand_04e	:$02_actor002_action-088,$02_actor002_action-084,$02_actor002_action-091
ウィップ連行A			=	actor02_stand_05	:$02_ecstasy_action12,$02_ecstasy_action13
ウィップ拉致監禁		=	actor02_cutin_04a	:$02_actor002_action-144,$02_actor002_action-145,$02_actor002_action-151
ウィップ監禁調教		=	actor02_cutin_04b	:$02_actor002_action-149,$02_actor002_action-155
ウィップ拘束監禁		=	actor02_cutin_04c	:$02_event_action01,$02_ecstasy_action14
ウィップボテ腹監禁		=	actor02_cutin_04d	:$02_actor002_action-153,$02_actor002_action-156
ウィップご奉仕奴隷		=	actor02_cutin_04e	:$02_event_action02,$02_ecstasy_action15
ウィップ悪堕ち			=	actor02_cutin_04f	:$02_event_action03,$02_ecstasy_action16,$02_ecstasy_action17
【ウィップその他】		=	spot			:$02_silence
ウィップおまけ			=	actor02_stand_08c
ウィップボツ絵			=	actor02_viewer_01
ウィップボツ絵			=	actor02_viewer_02
ウィップボツ絵			=	actor02_viewer_03
ウィップボツ絵			=	actor02_viewer_04
ウィップボツ絵			=	actor02_viewer_05
ウィップ初期案			=	actor02_viewer_06
EOF

store_txt "actor03", <<EOF
style = cutin
ウラ通常A		=	actor03_stand_01a	:$03_actor003_action-001,$03_actor003_action-007,$03_actor003_action-015
ウラ通常B		=	actor03_stand_01b	:$03_actor003_action-016,$03_actor003_action-019,$03_actor003_action-020
ウラ通常攻撃A		=	actor03_stand_01c	:$03_actor003_action-002,$03_actor003_action-003,$03_actor003_action-008
ウラ通常攻撃B		=	actor03_stand_01d	:$03_actor003_action-005,$03_actor003_action-009,$03_actor003_action-004
ウラ通常ダメージA	=	actor03_stand_01e	:$03_actor003_action-046,$03_actor003_action-047,$03_actor003_action-048
ウラ通常ダメージB	=	actor03_stand_01f	:$03_actor003_action-049,$03_actor003_action-050,$03_actor003_action-053
ウラ通常セクハラA	=	actor03_stand_01h	:$03_actor003_action-064,$03_actor003_action-065
ウラ通常セクハラB	=	actor03_stand_01i	:$03_actor003_action-066,$03_actor003_action-067
ウラピンチA		=	actor03_stand_02a	:$03_actor003_action-079,$03_actor003_action-020,$03_actor003_action-037
ウラピンチB		=	actor03_stand_02b	:$03_actor003_action-079,$03_actor003_action-022,$03_actor003_action-040
ウラピンチ攻撃A		=	actor03_stand_02c	:$03_actor003_action-017,$03_actor003_action-024,$03_actor003_action-021
ウラピンチ攻撃B		=	actor03_stand_02d	:$03_actor003_action-023,$03_actor003_action-018,$03_actor003_action-025
ウラピンチダメージA	=	actor03_stand_02e	:$03_actor003_action-051,$03_actor003_action-054
ウラピンチダメージB	=	actor03_stand_02f	:$03_actor003_action-055,$03_actor003_action-056
ウラピンチマゾダメージ	=	actor03_stand_02g	:$03_actor003_action-049,$03_actor003_action-052
ウラピンチセクハラA	=	actor03_stand_02h	:$03_actor003_action-068,$03_actor003_action-069
ウラピンチセクハラB	=	actor03_stand_02i	:$03_actor003_action-070,$03_actor003_action-071
ウラ全裸		=	actor03_stand_03	:$03_actor003_action-080,$03_actor003_action-041,$03_actor003_action-042
ウラ全裸攻撃		=	actor03_stand_03c	:$03_actor003_action-026,$03_actor003_action-027,$03_actor003_action-028
ウラ全裸ダメージ	=	actor03_stand_03e	:$03_actor003_action-058,$03_actor003_action-059,$03_actor003_action-060
ウラ全裸マゾダメージ	=	actor03_stand_03g	:$03_actor003_action-056,$03_actor003_action-057
ウラ全裸セクハラ	=	actor03_stand_03h	:$03_actor003_action-072,$03_actor003_action-073
ウラ全裸挿入		=	actor03_cutin_02	:$03_actor003_action-082,$03_actor003_action-083
ウラ全裸挿入＿輪姦	=	actor03_cutin_03b1	:$03_actor003_action-084
ウラ奴隷		=	actor03_stand_04	:$03_actor003_action-081,$03_actor003_action-045,$03_actor003_action-044
ウラ奴隷攻撃		=	actor03_stand_04c	:$03_actor003_action-029,$03_actor003_action-032,$03_actor003_action-033
ウラ奴隷ダメージ	=	actor03_stand_04e2	:$03_actor003_action-061,$03_actor003_action-062,$03_actor003_action-063
ウラ奴隷マゾダメージ	=	actor03_stand_04g	:$03_actor003_action-049,$03_actor003_action-057,$03_actor003_action-060
ウラ奴隷吸収ダメージ	=	actor03_stand_04J	:$03_actor003_action-077,$03_actor003_action-078
ウラ奴隷セクハラ	=	actor03_stand_04h	:$03_actor003_action-074,$03_actor003_action-075,$03_actor003_action-076
ウラ奴隷挿入		=	actor03_cutin_03	:$03_actor003_action-086,$03_actor003_action-089
ウラ奴隷挿入＿輪姦	=	actor03_cutin_03b2	:$03_actor003_action-085
ウラ奴隷挿入＿拘束A	=	actor03_cutin_03c	:$03_actor003_action-087
ウラ奴隷挿入＿拘束B	=	actor03_cutin_03f	:$03_actor003_action-088
ウラ奴隷挿入＿種付け	=	actor03_cutin_03g	:$03_ecstasy_action01
ウラ奴隷挿入＿ボコォ	=	actor03_cutin_03d	:$03_actor003_action-00v,$03_actor003_action-00w
ウラ奴隷挿入＿触手	=	actor03_cutin_03e	:$03_actor003_action-00p,$03_actor003_action-00q,$03_actor003_action-00r
ウラ拘束		=	actor03_stand_10a	:$03_actor003_gag03
ウラ自慰		=	actor03_stand_11a	:$03_actor003_moan05
ウラ白濁		=	actor03_stand_04e	:$03_actor003_action-073,$03_actor003_action-069,$03_actor003_action-079
ウラ連行A		=	actor03_stand_05	:$03_actor003_gag02
ウラ拉致監禁		=	actor03_cutin_04a	:$03_actor003_action-077,$03_actor003_action-072
ウラ監禁調教		=	actor03_cutin_04b	:$03_actor003_action-095,$03_actor003_action-096
ウラ拘束監禁		=	actor03_cutin_04c	:$03_actor003_action-00e,$03_actor003_action-00g,$03_actor003_action-00f
ウラボテ腹監禁		=	actor03_cutin_04d	:$03_actor003_action-097,$03_actor003_action-098
ウラご奉仕奴隷		=	actor03_cutin_04e	:$03_actor003_action-099,$03_actor003_action-100
ウラ悪堕ち		=	actor03_cutin_04f	:$03_event_action13
【ウラその他】		=	spot			:$03_silence
ウラおまけ		=	actor03_stand_08c
ウラボツ絵		=	actor03_viewer_01
ウラボツ絵		=	actor03_viewer_02
EOF

store_txt "actor04", <<EOF
style = cutin
ブレイド奴隷A			=	actor04_stand_01a	:$04_actor004_action-001,$04_actor004_action-050,$04_actor004_action-045
ブレイド奴隷B			=	actor04_stand_01b	:$04_actor004_action-043,$04_actor004_action-044,$04_actor004_action-053
ブレイド奴隷攻撃A		=	actor04_stand_01b	:$04_actor004_action-003,$04_actor004_action-007,$04_actor004_action-023,$04_actor004_action-024
ブレイド奴隷攻撃B		=	actor04_stand_04d	:$04_actor004_action-027,$04_actor004_action-029,$04_actor004_action-033,$04_actor004_action-031
ブレイド奴隷ダメージA		=	actor04_stand_04e2	:$04_actor004_action-058,$04_actor004_action-060,$04_actor004_action-061,$04_actor004_action-066
ブレイド奴隷ダメージB		=	actor04_stand_04f	:$04_actor004_action-067,$04_actor004_action-070,$04_actor004_action-071,$04_actor004_action-075
ブレイド奴隷マゾダメージ	=	actor04_stand_04g	:$04_ecstasy_action06,$04_ecstasy_action13,$04_ecstasy_action14,$04_ecstasy_action20
ブレイド奴隷吸収ダメージ	=	actor04_stand_04J	:$04_actor004_action-091,$04_actor004_action-083,$04_actor004_action-088,$04_actor004_action-085
ブレイド奴隷セクハラA		=	actor04_stand_04h	:$04_actor004_action-077,$04_actor004_action-078,$04_actor004_action-079,$04_actor004_action-081
ブレイド奴隷セクハラB		=	actor04_stand_04i	:$04_actor004_action-084,$04_actor004_action-087,$04_actor004_action-090,$04_actor004_action-086
ブレイド奴隷挿入		=	actor04_cutin_03	:$04_actor004_action-092,$04_actor004_action-093,$04_actor004_action-096
ブレイド奴隷挿入＿輪姦		=	actor04_cutin_03b2	:$04_actor004_action-097,$04_actor004_action-098,$04_actor004_action-099,$04_actor004_action-100
ブレイド奴隷挿入＿拘束A		=	actor04_cutin_03c	:$04_actor004_action-00f,$04_actor004_action-00h
ブレイド奴隷挿入＿拘束B		=	actor04_cutin_03f	:$04_actor004_action-00g,$04_actor004_action-00i
ブレイド奴隷挿入＿種付け	=	actor04_cutin_03g	:$04_actor004_action-091,$04_actor004_action-088
ブレイド奴隷挿入＿ボコォ	=	actor04_cutin_03d	:$04_actor004_action-00k,$04_actor004_action-00l
ブレイド奴隷挿入＿触手		=	actor04_cutin_03e	:$04_actor004_action-094,$04_actor004_action-095
ブレイド拘束			=	actor04_stand_10a	:$04_actor004_gag04,$04_actor004_gag02
ブレイド自慰			=	actor04_stand_11a	:$04_actor004_moan05
ブレイド白濁			=	actor04_stand_04e	:$04_actor004_action-066
ブレイド連行A			=	actor04_stand_05	:$04_actor004_breath02
ブレイド拉致監禁		=	actor04_cutin_04a	:$04_actor004_action-102b
ブレイド監禁調教		=	actor04_cutin_04b	:$04_actor004_action-101
ブレイド拘束監禁		=	actor04_cutin_04c	:$04_actor004_action-103
ブレイドボテ腹監禁		=	actor04_cutin_04d	:$04_actor004_action-104b
ブレイドご奉仕奴隷		=	actor04_cutin_04e	:$04_actor004_action-105,$04_actor004_action-106
ブレイド悪堕ち			=	actor04_cutin_04f	:$04_event_action05
ブレイド必殺技1A		=	actor04_viewer_1a	:$04_actor004_action-018,$04_actor004_action-019
ブレイド必殺技1B		=	actor04_viewer_1b	:$04_actor004_action-038,$04_actor004_action-039
ブレイド必殺技2A		=	actor04_viewer_2a	:$04_actor004_action-020,$04_actor004_action-021
ブレイド必殺技2B		=	actor04_viewer_2b	:$04_actor004_action-040,$04_actor004_action-041
【ブレイドその他】		=	spot			:$04_silence
ブレイドボツ絵			=	actor04_viewer_01
ブレイドボツ絵			=	actor04_viewer_02
ブレイドボツ絵			=	actor04_viewer_06
ブレイドボツ絵			=	actor04_viewer_11
ブレイドボツ絵			=	actor04_viewer_12
ブレイド私服			=	actor04_viewer_13
ブレイドバトルフォーム		=	actor04_viewer_10
ブレイド初期案			=	actor04_viewer_09
ブレイド初期案			=	actor04_viewer_07
ブレイド初期案			=	actor04_viewer_08
ブレイド初期案			=	actor04_viewer_05
ブレイド初期案			=	actor04_viewer_04
ブレイド初期案			=	actor04_viewer_03
EOF

store_txt "bgm", <<EOF
style = bgm
怪しい雰囲気♪	=	Dungeon2(70)
陵辱中♪	=	Dungeon8(70)
選択中1♪	=	Scene5(70)
選択中2♪	=	Town4(70)
BGM OFF
EOF

store_txt "captive_a1_01", <<EOF
style = cg
captive001_actor01a	:!$01_actor001_Fella01
EOF

store_txt "captive_a1_02", <<EOF
style = cg
captive002_actor01a	:$01_actor001_action-085
captive002_actor01b	:!$01_actor001_breath01
captive002_actor01c	:!$01_actor001_moan02
captive002_actor01d	:!$01_actor001_breath04
EOF

store_txt "captive_a1_03", <<EOF
style = cg
captive003_actor01a	:!$01_actor001_breath01,!$04_actor004_breath04
captive003_actor01b	:!$01_actor001_breath01,!$04_actor004_breath04
captive003_actor01c	:!$01_actor001_breath01,!$04_actor004_breath02
captive003_actor01d	:$01_ecstasy_action05,$04_ecstasy_action01
EOF

store_txt "captive_a1_04", <<EOF
style = cg
captive004_actor01a	:$01_ecstasy_action08
captive004_actor01b	:!$01_actor001_moan02
captive004_actor01c	:!$01_actor001_breath05
captive004_actor01d	:!$01_actor001_breath04
captive004_actor01e	:!$01_actor001_Fella04
captive004_actor01f	:!$01_actor001_breath05
EOF

store_txt "captive_a2_01", <<EOF
style = cg
captive001_actor02a	:!$02_actor002_breath01
captive001_actor02b	:!$02_actor002_moan03
EOF

store_txt "captive_a2_03", <<EOF
style = cg
captive003_actor02a	:!$02_actor002_kiss05,!$04_actor004_kiss05
captive003_actor02b	:$02_ecstasy_action02,$04_ecstasy_action14
EOF

store_txt "captive_a2_04", <<EOF
style = cg
captive004_actor02a	:!$02_actor002_breath01b
captive004_actor02b	:!$02_actor002_breath05
captive004_actor02c	:!$02_actor002_Fella05
captive004_actor02d	:!$02_actor002_kiss05
EOF

store_txt "captive_a3_02", <<EOF
style = cg
captive002_actor03a	:!$03_actor003_moan01
captive002_actor03b	:!$03_actor003_moan03
captive002_actor03c	:!$03_actor003_breath04
EOF

store_txt "captive_a3_03", <<EOF
style = cg
captive003_actor03a	:!$03_actor003_breath01,!$04_actor004_gag01
captive003_actor03b	:!$03_actor003_moan02,!$04_actor004_gag03
captive003_actor03c	:!$03_actor003_moan03,!$04_actor004_gag02
captive003_actor03d	:!$03_actor003_kiss04,!$04_actor004_gag04
EOF

store_txt "captive_a3_04", <<EOF
style = cg
captive004_actor03a	:$03_actor003_action-066
captive004_actor03b	:!$03_actor003_breath01b
captive004_actor03c	:!$03_actor003_moan01
captive004_actor03d	:!$03_actor003_Fella05
EOF

store_txt "captive_a4_02", <<EOF
style = cg
captive002_actor04a	:!$04_actor004_gag01
captive002_actor04b	:!$04_actor004_moan04
captive002_actor04c	:!$04_actor004_breath05
EOF

store_txt "captive_a4_04", <<EOF
style = cg
captive004_actor04a	:$04_event_action10
captive004_actor04b	:$04_event_action23
captive004_actor04c	:!$04_actor004_gag04
captive004_actor04d	:!$04_actor004_moan04
EOF

store_txt "category", <<EOF
アサギ立ち絵    = actor01
ウィップ立ち絵  = actor02
ウラ立ち絵      = actor03
ブレイド立ち絵  = actor04
敵女＆ボツキャラ= other
即負け剣士輪姦調教			= event01
監禁剣士、ご奉仕折檻			= captive_a1_01
クールな鞭使い、意外な弱点！？			= captive_a2_01
ウラの監禁舐め舐め調教	= event02
晒し者のメス豚！全身舐め舐め刑		= event03
マスク・オブ・ホワイト登場！	= event04
鉄拳の姫騎士ウランディーヌ		= event05
敗北剣士、痴刑裁き			= captive_a1_02
負けたらスレイブ生意気女番長！			= captive_a3_02
種付け全員サービス！			= captive_a4_02
ウィップのマゾ奴隷アナル責め		= event06
メス豚オークション			= event07
破れたりホワイティ・エース！	= event08
VS変態キツネ娘　炎のエロ綱引き！			= captive_a1_03
VS変態イヌ女　対決イカせ合い勝負！		= captive_a2_03
VS変態ウサギ女　対決早抜き勝負！			= captive_a3_03
ボテ腹ダブルピース敗北宣言		= event09
さらば、愛しきエロ・・・			= event10
アサギ・・・肉便器に堕つ1		= event11
アサギ・・・肉便器に堕つ2			= event12
穢された主従の絆			= event13
凸凹カップル誕生？		= event14
大敗北！エロ空間で晒し肉便器			= event15
風紀学園肛門係！ヌキうち検査！			= captive_a1_04
反省板のロザリオ			= captive_a2_04
コーポNTRの一室			= captive_a3_04
その影はいづこ・・・			= captive_a4_04
閉幕・風紀剣士アサギ			= event16
BGM				= bgm
EOF

store_txt "config", <<EOF
メニューコマンド	=	

ウィンドウX位置	=	
ウィンドウY位置	=	
ウィンドウ横幅	=	277
ウィンドウ縦幅	=	

カテゴリーウィンドウX位置	=	
カテゴリーウィンドウY位置	=	
カテゴリーウィンドウ横幅	=	
カテゴリーウィンドウ縦幅	=	

カットインウィンドウX位置	=	
カットインウィンドウY位置	=	
カットインウィンドウ横幅	=	
カットインウィンドウ縦幅	=	
カットイン画像X位置			=	
カットイン画像Y位置			=	

カスタムウィンドウX位置 = 
カスタムウィンドウY位置 = 
カスタムウィンドウ横幅 = 180
カスタムウィンドウ縦幅 = 
カスタム画像X位置 = 
カスタム画像Y位置 = 
カスタムヘルプX位置 = 
カスタムヘルプY位置 = 245
カスタムヘルプ横幅 = 
カスタムヘルプ縦幅 = 170

CGヘルプ横幅		= 	160
CGヘルプファイル	=	help
EOF

store_txt "event01", <<EOF
style = cg
defeated001a	:	!$01_actor001_kiss04,!$02_actor002_moan05
EOF

store_txt "event02", <<EOF
style = cg
event001a	:!$03_actor003_moan01
event001b	:!$03_actor003_kiss01
EOF

store_txt "event03", <<EOF
style = cg
defeated_bos001a	:!$01_actor001_moan03,!$02_actor002_moan05(80),!$03_actor003_moan03
EOF

store_txt "event04", <<EOF
style = cg
event002a	:$04_event_action01
event002b	:$04_ecstasy_action20
event002c	:$04_actor004_action-050
event002d	:$04_ecstasy_action19
event002e	:$04_actor004_action-051
EOF

store_txt "event05", <<EOF
style = cg
event005a	:!$03_actor003_gag01
event005b	:!$03_actor003_gag03
event005c	:!$03_actor003_breath01
event005d	:!$03_actor003_moan01
event005e	:!$03_actor003_breath02
EOF

store_txt "event06", <<EOF
style = cg
event003a	:!$02_actor002_gag04
event003b	:!$02_actor002_moan05
EOF

store_txt "event07", <<EOF
style = cg
defeated_bos002a	:!$01_actor001_gag03(40),!$02_actor002_moan04,!$03_actor003_breath03(40),$04_silence
defeated_bos002b	:!$01_actor001_gag04(40),!$02_actor002_moan05(40),!$03_actor003_breath04(40),!$04_actor004_gag03
defeated_bos002c	:$01_silence,!$02_actor002_breath04,$03_silence,$04_silence
defeated_bos002d	:$01_silence,!$02_actor002_breath02,$03_silence,$04_silence
defeated_bos002e	:$01_silence,!$02_actor002_moan01,$03_silence,$04_silence
defeated_bos002f	:$01_silence,!$02_actor002_moan03,$03_silence,$04_silence
defeated_bos002g	:!$01_actor001_gag04(40),!$02_actor002_gag02,!$03_actor003_breath04(40),$04_silence
EOF

store_txt "event08", <<EOF
style = cg
actor04_cutin_10a	:$04_actor004_action-019
actor04_cutin_10ab	:$04_actor004_action-039
actor04_cutin_10b	:$04_ecstasy_action12
actor04_cutin_10bb	:$04_ecstasy_action13
actor04_cutin_10c	:$04_ecstasy_action20
actor04_cutin_10cb	:!$04_actor004_moan02
actor04_cutin_10d	:!$04_actor004_moan03
actor04_cutin_10e	:$04_ecstasy_action01
EOF

store_txt "event09", <<EOF
style = cg
event004a	:!$04_actor004_breath02b
event004b	:!$04_actor004_Fella04
event004c	:$04_ecstasy_action32
EOF

store_txt "event10", <<EOF
style = cg
defeated_bos003a	:!$01_actor001_gag05(10),!$02_actor002_Fella05,!$03_actor003_gag05(10),!$04_actor004_Fella05
defeated_bos003b	:!$01_actor001_gag05(10),!$02_actor002_kiss05,!$03_actor003_gag05(10),!$04_actor004_breath05(70)
defeated_bos003c	:!$01_actor001_gag05(10),!$02_actor002_breath05,!$03_actor003_gag05(10),!$04_actor004_breath05(90)
EOF

store_txt "event11", <<EOF
style = cg
event006a	:!$01_actor001_moan01
event006b	:!$01_actor001_moan02
event006c	:$01_actor001_action-135
EOF

store_txt "event12", <<EOF
style = cg
event007a	:!$02_actor002_gag02(50),!$03_actor003_gag02(60),!$04_actor004_gag02(60)
event007b	:!$02_actor002_breath01b,!$03_actor003_breath01b,!$04_actor004_breath01b
EOF

store_txt "event13", <<EOF
style = cg
event008a	:!$02_actor002_breath05,!$04_actor004_moan04
event008b	:!$02_actor002_breath02,!$04_actor004_breath04
event008c	:!$02_actor002_breath03,!$04_actor004_breath04
EOF

store_txt "event14", <<EOF
style = cg
event009a	:$03_event_action01
event009b	:$03_event_action09
event009c	:$03_event_action08
event009d	:$03_actor003_action-002
event009e	:$03_event_action20
event009f	:!$03_actor003_kiss05
EOF

store_txt "event15", <<EOF
style = cg
defeated002a	:!$01_actor001_gag05(60),!$02_actor002_Fella05(80),!$03_actor003_Fella05,!$04_actor004_breath05(40)
EOF

store_txt "event16", <<EOF
style = cg
defeated_bos004d	:!$01_actor001_breath05
EOF

store_txt "help", <<EOF
\\C[6]↑↓\\C[0]で選択
\\C[6]決定\\C[0]で音声再生
EOF

store_txt "colosseum", <<EOF
チンピラ集団	= 1,battle_01,text01
山賊集団	= 2,battle_02,text02
忍者集団	= 3,battle_03,text03
孕ませオーク	= 4,battle_04,text04
虚無僧		= 5,battle_05,text05
拷問官		= 6,battle_06,text06
支配人		= 7,battle_07,text07
痴漢の牢獄	= 8,battle_08,text08
ウンディーネ	= 10,battle_10,text10
シルフ		= 11,battle_11,text11
エンジェル	= 12,battle_12,text12
三兄弟		= 13,battle_13,text13
サドスト	= 14,battle_14,text14
ブラック	= 15,battle_15,text15
アクスケ	= 16,battle_16,text16
EOF

store_txt "text01", <<EOF
\\C[18]チンピラ集団\\C[0]　撃破数：\\V[261]
難易度   ：\\C[6]★\\C[0]
戦闘条件 ：なし
女をさらって犯すことしか考えていない
チンピラたち。
セクハラ攻撃に注意しろ！
EOF

store_txt "text02", <<EOF
\\C[18]山賊集団\\C[0]　　　撃破数：\\V[262]
難易度   ：\\C[6]★\\C[0]
戦闘条件 ：なし
女をメス豚に調教して金持ちに売り払う
悪党たち。
追い剥ぎ攻撃に気をつけろ！
EOF

store_txt "text03", <<EOF
\\C[18]忍者集団\\C[0]　　　撃破数：\\V[263]
難易度   ：\\C[6]★★\\C[0]
戦闘条件 ：なし
女の弱点を責めるスケベ忍者集団。
次々と繰り出してくる調教攻撃に
怯む前に先手を取れ！
EOF

store_txt "text04", <<EOF
\\C[18]孕ませオーク\\C[0]　撃破数：\\V[264]
難易度   ：\\C[6]★★\\C[0]
戦闘条件 ：なし
メス豚を孕ませることだけしか
考えていない凶悪オーク！
押し倒し攻撃は問答無用のレイプ技！
EOF

store_txt "text05", <<EOF
\\C[18]虚無僧\\C[0]　　　　撃破数：\\V[265]
難易度   ：\\C[6]★★★\\C[0]
戦闘条件 ：なし
メス豚の調教を生業とする破戒僧。
奴隷状態では淫霧に注意！
発情してオナニー狂いにされるぞ！
EOF

store_txt "text06", <<EOF
\\C[18]拷問官\\C[0]　　　　撃破数：\\V[266]
難易度   ：\\C[6]★★★\\C[0]
戦闘条件 ：なし
生意気なメス豚を二度と逆らえない
服従奴隷にする調教師。
強奪攻撃には持ち物注意！
EOF

store_txt "text07", <<EOF
\\C[18]支配人\\C[0]　　　　撃破数：\\V[267]
難易度   ：\\C[6]★★★★\\C[0]
戦闘条件 ：奴隷状態
魔に魂を捧げてインキュバスとなった
ドスゲスの末路。
堕とした女を淫魔に変える！
EOF

store_txt "text08", <<EOF
\\C[18]痴漢の牢獄\\C[0]　　撃破数：\\V[268]
難易度   ：\\C[6]★★★★\\C[0]
戦闘条件 ：奴隷状態
風紀剣士たちを捕まえた反乱者。
反省板で晒し者調教されるている
風紀剣士たちだが・・・
EOF

store_txt "text10", <<EOF
\\C[18]ウンディーネ\\C[0]　撃破数：\\V[270]
難易度   ：\\C[6]★★★★★\\C[0]
戦闘条件 ：奴隷状態
アクスケの調教で堕落した女神。
その周囲には媚薬入りの水流があり
直接攻撃は危険！
EOF

store_txt "text11", <<EOF
\\C[18]シルフ\\C[0]　　　　撃破数：\\V[271]
難易度   ：\\C[6]★★★★★\\C[0]
戦闘条件 ：奴隷状態
アクスケの調教で堕落した女神。
通常攻撃しかしてこないが
マゾ化された身体では危険！
EOF

store_txt "text12", <<EOF
\\C[18]エンジェル\\C[0]　　撃破数：\\V[272]
難易度   ：\\C[6]★★★★★\\C[0]
戦闘条件 ：奴隷状態
アクスケの調教で堕落した女神。
メス豚を発情させて自慰中毒にして
亡者どもをけしかけてくる。
EOF

store_txt "text13", <<EOF
\\C[18]三兄弟\\C[0]　　　　撃破数：\\V[273]
難易度   ：\\C[6]★★★\\C[0]
戦闘条件 ：ウラ監禁
舐め舐め調教が得意な凶悪な三兄弟。
その舐め舐めフォーメーションは強力
攻撃順番に気をつけろ！
EOF

store_txt "text14", <<EOF
\\C[18]サドスト\\C[0]　　　撃破数：\\V[274]
難易度   ：\\C[6]★★★★\\C[0]
戦闘条件 ：ウィップ監禁
肉便器量産機の異名を持つ調教師。
マゾ化調教に気を付けないと
拘束肉便器にされてしまうぞ！
EOF

store_txt "text15", <<EOF
\\C[18]ブラック\\C[0]　　　撃破数：\\V[275]
難易度   ：\\C[6]★★★★★\\C[0]
戦闘条件 ：ブレイド監禁、奴隷状態
マスク・オブ・ホワイトの宿敵。
ザーメンシャワーを破らねば
ボテ腹調教で牝奴隷にされてしまうぞ！
EOF

store_txt "text16", <<EOF
\\C[18]アクスケ\\C[0]　　　撃破数：\\V[276]
難易度   ：\\C[6]★★★★★★\\C[0]
戦闘条件 ：奴隷状態
淫天獄を作り上げた諸悪の根源。
堕とされた仲間は悪堕ち奴隷にされるぞ
正義の力で目を覚まさせろ！
EOF

store_txt "captive", <<EOF
通常監禁	= 1,captive_01,c_text01
監禁調教	= 2,captive_02,c_text02
拘束監禁	= 3,captive_03,c_text03
ボテ監禁	= 4,captive_04,c_text04
奴隷監禁	= 5,captive_05,c_text05
EOF

store_txt "c_text01", <<EOF
\\C[27]通常監禁\\C[0]
初歩的なメス豚監禁方法。
\\C[31]メス豚の穴\\C[0]の下級構成員の監禁方法
EOF

store_txt "c_text02", <<EOF
\\C[27]監禁調教\\C[0]
生意気なメス豚の監禁方法。
二度と逆らえないように快楽漬けにする
ことで従順な肉便器に仕上げる。
\\C[31]メス豚の穴\\C[0]の幹部の嗜み。
EOF

store_txt "c_text03", <<EOF
\\C[27]拘束監禁\\C[0]
凶暴なメス豚の監禁方法。
抵抗出来ない状況でチンポ漬けに
することで己の無力さを思い知らせる。
高レベル調教師の匠の技術。
EOF

store_txt "c_text04", <<EOF
\\C[27]ボテ監禁\\C[0]
プリンス・ブラックの特別監禁方法。
メス豚をザーメンタンクにすることで
徹底的にチンポに服従させる。
早漏絶倫のブラックならでわの監禁方法。
EOF

store_txt "c_text05", <<EOF
\\C[27]奴隷監禁\\C[0]
ご奉仕奴隷となったメス豚の監禁方法。
おチンポに完全服従した姿。
自らチンポをねだるメス豚の末路。
EOF

store_txt "other", <<EOF
style = cutin
くノ一A			=	enemy_cutin01a		:$05_enemy_action-001
くノ一B			=	enemy_cutin01b		:$05_enemy_action-001
くノ一C			=	enemy_cutin01c		:$05_enemy_action-001
サキュバス		=	enemy_cutin02a		:$05_enemy_action-002
ウンディーネ		=	enemy_cutin03a		:$05_enemy_action-005
シルフ			=	enemy_cutin05a		:$05_enemy_action-003
エンジェル		=	enemy_cutin04a		:$05_enemy_action-004
【ボツキャラ】		=	spot			:silence
呪術師通常		=	actor05_viewer_01	:silence
呪術師ピンチ		=	actor05_viewer_02	:silence
呪術師拘束		=	actor05_viewer_03	:silence
呪術師セクハラ		=	actor05_viewer_04	:silence
呪術師挿入		=	actor05_viewer_05	:silence
呪術師監禁A		=	actor05_viewer_06	:silence
呪術師監禁B		=	actor05_viewer_07	:silence
女悪魔通常		=	actor06_viewer_01	:silence
魔法少女通常A		=	actor07_viewer_01	:silence
魔法少女通常B		=	actor07_viewer_02	:silence
魔法少女ピンチ		=	actor07_viewer_03	:silence
魔法少女攻撃		=	actor07_viewer_04	:silence
魔法少女必殺技		=	actor07_viewer_05	:silence
魔法少女ダメージ	=	actor07_viewer_06	:silence
魔法少女セクハラA	=	actor07_viewer_07	:silence
魔法少女セクハラB	=	actor07_viewer_08	:silence
魔法少女挿入A		=	actor07_viewer_09	:silence
魔法少女挿入B		=	actor07_viewer_10	:silence
魔法少女監禁A		=	actor07_viewer_11	:silence
魔法少女監禁B		=	actor07_viewer_12	:silence
魔法少女監禁C		=	actor07_viewer_13	:silence
魔法少女拘束		=	actor07_viewer_14	:silence
魔法少女拘束挿入	=	actor07_viewer_15	:silence
EOF

end
