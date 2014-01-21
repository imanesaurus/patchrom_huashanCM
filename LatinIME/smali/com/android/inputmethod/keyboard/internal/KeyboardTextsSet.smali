.class public final Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;
.super Ljava/lang/Object;
.source "KeyboardTextsSet.java"


# static fields
.field private static final LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

.field private static final LANGUAGE_DEFAULT:[Ljava/lang/String;

.field private static final LANGUAGE_af:[Ljava/lang/String;

.field private static final LANGUAGE_ar:[Ljava/lang/String;

.field private static final LANGUAGE_be:[Ljava/lang/String;

.field private static final LANGUAGE_ca:[Ljava/lang/String;

.field private static final LANGUAGE_cs:[Ljava/lang/String;

.field private static final LANGUAGE_da:[Ljava/lang/String;

.field private static final LANGUAGE_de:[Ljava/lang/String;

.field private static final LANGUAGE_en:[Ljava/lang/String;

.field private static final LANGUAGE_eo:[Ljava/lang/String;

.field private static final LANGUAGE_es:[Ljava/lang/String;

.field private static final LANGUAGE_et:[Ljava/lang/String;

.field private static final LANGUAGE_fa:[Ljava/lang/String;

.field private static final LANGUAGE_fi:[Ljava/lang/String;

.field private static final LANGUAGE_fr:[Ljava/lang/String;

.field private static final LANGUAGE_hi:[Ljava/lang/String;

.field private static final LANGUAGE_hr:[Ljava/lang/String;

.field private static final LANGUAGE_hu:[Ljava/lang/String;

.field private static final LANGUAGE_hu_ZZ:[Ljava/lang/String;

.field private static final LANGUAGE_hy:[Ljava/lang/String;

.field private static final LANGUAGE_is:[Ljava/lang/String;

.field private static final LANGUAGE_it:[Ljava/lang/String;

.field private static final LANGUAGE_iw:[Ljava/lang/String;

.field private static final LANGUAGE_ky:[Ljava/lang/String;

.field private static final LANGUAGE_lt:[Ljava/lang/String;

.field private static final LANGUAGE_lv:[Ljava/lang/String;

.field private static final LANGUAGE_mk:[Ljava/lang/String;

.field private static final LANGUAGE_nb:[Ljava/lang/String;

.field private static final LANGUAGE_nl:[Ljava/lang/String;

.field private static final LANGUAGE_pl:[Ljava/lang/String;

.field private static final LANGUAGE_pt:[Ljava/lang/String;

.field private static final LANGUAGE_rm:[Ljava/lang/String;

.field private static final LANGUAGE_ro:[Ljava/lang/String;

.field private static final LANGUAGE_ru:[Ljava/lang/String;

.field private static final LANGUAGE_sk:[Ljava/lang/String;

.field private static final LANGUAGE_sl:[Ljava/lang/String;

.field private static final LANGUAGE_sr:[Ljava/lang/String;

.field private static final LANGUAGE_sv:[Ljava/lang/String;

.field private static final LANGUAGE_sw:[Ljava/lang/String;

.field private static final LANGUAGE_tl:[Ljava/lang/String;

.field private static final LANGUAGE_tr:[Ljava/lang/String;

.field private static final LANGUAGE_uk:[Ljava/lang/String;

.field private static final LANGUAGE_vi:[Ljava/lang/String;

.field private static final LANGUAGE_zu:[Ljava/lang/String;

.field private static final LANGUAGE_zz:[Ljava/lang/String;

.field private static final NAMES:[Ljava/lang/String;

.field private static final RESOURCE_NAMES:[Ljava/lang/String;

.field private static final sLocaleToTextsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNameToIdsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResourceNameToTextsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->sLocaleToTextsMap:Ljava/util/HashMap;

    .line 50
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->sNameToIdsMap:Ljava/util/HashMap;

    .line 89
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "label_go_key"

    aput-object v2, v1, v0

    const-string v2, "label_send_key"

    aput-object v2, v1, v5

    const-string v2, "label_next_key"

    aput-object v2, v1, v6

    const-string v2, "label_done_key"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "label_previous_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "label_to_alpha_key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "label_to_symbol_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "label_to_symbol_with_microphone_key"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "label_pause_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "label_wait_key"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->RESOURCE_NAMES:[Ljava/lang/String;

    .line 106
    const/16 v1, 0x82

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "more_keys_for_a"

    aput-object v2, v1, v0

    const-string v2, "more_keys_for_e"

    aput-object v2, v1, v5

    const-string v2, "more_keys_for_i"

    aput-object v2, v1, v6

    const-string v2, "more_keys_for_o"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "more_keys_for_u"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "more_keys_for_s"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "more_keys_for_n"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "more_keys_for_c"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "more_keys_for_y"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "more_keys_for_d"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "more_keys_for_r"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "more_keys_for_t"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "more_keys_for_z"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "more_keys_for_k"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "more_keys_for_l"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "more_keys_for_g"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "more_keys_for_v"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "more_keys_for_h"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "more_keys_for_j"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "more_keys_for_w"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "keylabel_for_nordic_row1_11"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "keylabel_for_nordic_row2_10"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "keylabel_for_nordic_row2_11"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "more_keys_for_nordic_row2_10"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "more_keys_for_nordic_row2_11"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "keylabel_for_east_slavic_row1_9"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "keylabel_for_east_slavic_row1_12"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "keylabel_for_east_slavic_row2_1"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "keylabel_for_east_slavic_row2_11"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "keylabel_for_east_slavic_row3_5"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "more_keys_for_cyrillic_u"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "more_keys_for_cyrillic_en"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "more_keys_for_cyrillic_ghe"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "more_keys_for_east_slavic_row2_1"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "more_keys_for_cyrillic_o"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "more_keys_for_cyrillic_soft_sign"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "keylabel_for_south_slavic_row1_6"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "keylabel_for_south_slavic_row2_11"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "keylabel_for_south_slavic_row3_1"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "keylabel_for_south_slavic_row3_8"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "more_keys_for_cyrillic_ie"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "more_keys_for_cyrillic_i"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "more_keys_for_single_quote"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "more_keys_for_double_quote"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "more_keys_for_tablet_double_quote"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "more_keys_for_currency_dollar"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "more_keys_for_currency_euro"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "more_keys_for_currency_pound"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "more_keys_for_currency_general"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "more_keys_for_punctuation"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "more_keys_for_star"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "more_keys_for_bullet"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "more_keys_for_plus"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "more_keys_for_left_parenthesis"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "more_keys_for_right_parenthesis"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "more_keys_for_less_than"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "more_keys_for_greater_than"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "more_keys_for_arabic_diacritics"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "keyhintlabel_for_arabic_diacritics"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "keylabel_for_symbols_1"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "keylabel_for_symbols_2"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "keylabel_for_symbols_3"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "keylabel_for_symbols_4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "keylabel_for_symbols_5"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "keylabel_for_symbols_6"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "keylabel_for_symbols_7"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "keylabel_for_symbols_8"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "keylabel_for_symbols_9"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "keylabel_for_symbols_0"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "additional_more_keys_for_symbols_1"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "additional_more_keys_for_symbols_2"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "additional_more_keys_for_symbols_3"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "additional_more_keys_for_symbols_4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "additional_more_keys_for_symbols_5"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "additional_more_keys_for_symbols_6"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "additional_more_keys_for_symbols_7"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "additional_more_keys_for_symbols_8"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "additional_more_keys_for_symbols_9"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "additional_more_keys_for_symbols_0"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "more_keys_for_symbols_1"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "more_keys_for_symbols_2"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "more_keys_for_symbols_3"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "more_keys_for_symbols_4"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "more_keys_for_symbols_5"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "more_keys_for_symbols_6"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "more_keys_for_symbols_7"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "more_keys_for_symbols_8"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "more_keys_for_symbols_9"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "more_keys_for_symbols_0"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "keylabel_for_comma"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "more_keys_for_comma"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "keylabel_for_symbols_question"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "keylabel_for_symbols_semicolon"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "keylabel_for_symbols_percent"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "more_keys_for_symbols_exclamation"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "more_keys_for_symbols_question"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "more_keys_for_symbols_semicolon"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "more_keys_for_symbols_percent"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "keylabel_for_tablet_comma"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "keyhintlabel_for_tablet_comma"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "more_keys_for_tablet_comma"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "keylabel_for_tablet_period"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "keyhintlabel_for_tablet_period"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "more_keys_for_tablet_period"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "keylabel_for_apostrophe"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "keyhintlabel_for_apostrophe"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "more_keys_for_apostrophe"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "more_keys_for_q"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "more_keys_for_x"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "keylabel_for_q"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "keylabel_for_w"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "keylabel_for_y"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "keylabel_for_x"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "keylabel_for_spanish_row2_10"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "more_keys_for_am_pm"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "settings_as_more_key"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "shortcut_as_more_key"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "action_next_as_more_key"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "action_previous_as_more_key"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "label_to_more_symbol_key"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "label_to_more_symbol_for_tablet_key"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "label_tab_key"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "label_to_phone_numeric_key"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "label_to_phone_symbols_key"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "label_time_am"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "label_time_pm"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "label_to_symbol_key_pcqwerty"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "keylabel_for_popular_domain"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "more_keys_for_popular_domain"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "more_keys_for_smiley"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->NAMES:[Ljava/lang/String;

    .line 242
    const/16 v1, 0x82

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "!fixedColumnOrder!4,\u2018,\u2019,\u201a,\u201b"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab,\u00bb"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab,\u00bb,\u2018,\u2019,\u201a,\u201b"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "\u00a2,\u00a3,\u20ac,\u00a5,\u20b1,\u20b9"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "\u00a2,\u00a3,$,\u00a5,\u20b1,\u20b9"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "\u00a2,$,\u20ac,\u00a5,\u20b1,\u20b9"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "\u00a2,$,\u20ac,\u00a3,\u00a5,\u20b1,\u20b9"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "!fixedColumnOrder!8,\",\',#,-,:,!,\\,,?,@,&,\\%,+,;,/,(,)"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "\u2020,\u2021,\u2605"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "\u266a,\u2665,\u2660,\u2666,\u2663"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "\u00b1"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "!fixedColumnOrder!3,<,{,["

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "!fixedColumnOrder!3,>,},]"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "!fixedColumnOrder!3,\u2039,\u2264,\u00ab"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "!fixedColumnOrder!3,\u203a,\u2265,\u00bb"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "\u00b9,\u00bd,\u2153,\u00bc,\u215b"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "\u00b2,\u2154"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "\u00b3,\u00be,\u215c"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "\u2074"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "\u215d"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "\u215e"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "\u207f,\u2205"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, ","

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, ";"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "%"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "\u00a1"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "\u00bf"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "\u2030"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, ","

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "!"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "!"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "."

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "\'"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "\""

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "\""

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "q"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "w"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "y"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "x"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "\u00f1"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "!fixedColumnOrder!2,!hasLabels!,!text/label_time_am,!text/label_time_pm"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "!icon/settings_key|!code/key_settings"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "!icon/shortcut_key|!code/key_shortcut"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "!hasLabels!,!text/label_next_key|!code/key_action_next"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "!hasLabels!,!text/label_previous_key|!code/key_action_previous"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "= \\ <"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "~ \\ {"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "Tab"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "123"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "\uff0a\uff03"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "AM"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "PM"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "Sym"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, ".com"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "!hasLabels!,.net,.org,.gov,.edu"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "!fixedColumnOrder!5,!hasLabels!,=-O|=-O ,:-P|:-P ,;-)|;-) ,:-(|:-( ,:-)|:-) ,:-!|:-! ,:-$|:-$ ,B-)|B-) ,:O|:O ,:-*|:-* ,:-D|:-D ,:\'(|:\'( ,:-\\\\|:-\\\\ ,O:-)|O:-) ,:-[|:-[ "

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    .line 399
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e2,\u00e4,\u00e0,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ec,\u00ef,\u00ee,\u012f,\u012b,\u0133"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f4,\u00f6,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fb,\u00fc,\u00f9,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u0133"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_af:[Ljava/lang/String;

    .line 452
    const/16 v1, 0x6b

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab,\u2018,\u2019,\u201a,\u201b"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v3, "!fixedColumnOrder!8,\",\',#,-,:,!,\u060c,\u061f,@,&,\\%,+,\u061b,/,(,)"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "\u2605,\u066d"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "\u266a"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string v3, "!fixedColumnOrder!4,\ufd3e|\ufd3f,<|>,{|},[|]"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "!fixedColumnOrder!4,\ufd3f|\ufd3e,>|<,}|{,]|["

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "!fixedColumnOrder!3,\u2039|\u203a,\u2264|\u2265,\u00ab|\u00bb"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "!fixedColumnOrder!3,\u203a|\u2039,\u2265|\u2264,\u00bb|\u00ab"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "!fixedColumnOrder!7,\u0655,\u0654,\u0652,\u064d,\u064c,\u064b,\u0651,\u0656,\u0670,\u0653,\u0650,\u064f,\u064e,\u0640\u0640\u0640|\u0640"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "\u0651"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "\u0661"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "\u0662"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "\u0663"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "\u0664"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "\u0665"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "\u0666"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "\u0667"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "\u0668"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "\u0669"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "\u0660"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "0,\u066b,\u066c"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    aput-object v4, v1, v2

    const/16 v2, 0x50

    aput-object v4, v1, v2

    const/16 v2, 0x51

    aput-object v4, v1, v2

    const/16 v2, 0x52

    aput-object v4, v1, v2

    const/16 v2, 0x53

    aput-object v4, v1, v2

    const/16 v2, 0x54

    aput-object v4, v1, v2

    const/16 v2, 0x55

    aput-object v4, v1, v2

    const/16 v2, 0x56

    aput-object v4, v1, v2

    const/16 v2, 0x57

    aput-object v4, v1, v2

    const/16 v2, 0x58

    aput-object v4, v1, v2

    const/16 v2, 0x59

    const-string v3, "\u060c"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "\\,"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "\u061f"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "\u061b"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "\u066a"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    aput-object v4, v1, v2

    const/16 v2, 0x5f

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, ";"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "\\%,\u2030"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    aput-object v4, v1, v2

    const/16 v2, 0x63

    aput-object v4, v1, v2

    const/16 v2, 0x64

    aput-object v4, v1, v2

    const/16 v2, 0x65

    aput-object v4, v1, v2

    const/16 v2, 0x66

    aput-object v4, v1, v2

    const/16 v2, 0x67

    aput-object v4, v1, v2

    const/16 v2, 0x68

    const-string v3, "\u060c"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "\u061f"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "\u061f,\u061b,!,:,-,/,\',\""

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ar:[Ljava/lang/String;

    .line 576
    const/16 v1, 0x29

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v3, "\u045e"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\u0451"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\u044b"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\u044d"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\u0456"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v3, "\u044a"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v3, "\u0451"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_be:[Ljava/lang/String;

    .line 604
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e1,\u00e4,\u00e2,\u00e3,\u00e5,\u0105,\u00e6,\u0101,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e8,\u00e9,\u00eb,\u00ea,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ef,\u00ec,\u00ee,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f2,\u00f3,\u00f6,\u00f4,\u00f5,\u00f8,\u0153,\u014d,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u00f9,\u00fb,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7,\u0107,\u010d"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u0140,\u0142"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ca:[Ljava/lang/String;

    .line 664
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e0,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u011b,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ee,\u00ef,\u00ec,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u016f,\u00fb,\u00fc,\u00f9,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161,\u00df,\u015b"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0148,\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u010d,\u00e7,\u0107"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u00ff"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u010f"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0159"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0165"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e,\u017a,\u017c"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_cs:[Ljava/lang/String;

    .line 734
    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e4,\u00e0,\u00e2,\u00e3,\u0101,\u00e5,\u00e6"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00eb"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ef"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f4,\u00f2,\u00f5,\u0153,\u014d,\u00f8"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u00fb,\u00f9,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df,\u015b,\u0161"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u00ff"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u00f0"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u0142"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u00e5"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u00e6"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u00f8"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u00e4"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\u00f6"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_da:[Ljava/lang/String;

    .line 798
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e4,\u00e2,\u00e0,\u00e1,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00ea,\u00eb,\u0117"

    aput-object v2, v1, v5

    aput-object v4, v1, v6

    const-string v2, "\u00f6,\u00f4,\u00f2,\u00f3,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df,\u015b,\u0161"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_de:[Ljava/lang/String;

    .line 840
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e1,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e8,\u00e9,\u00ea,\u00eb,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ee,\u00ef,\u00ed,\u012b,\u00ec"

    aput-object v2, v1, v6

    const-string v2, "\u00f4,\u00f6,\u00f2,\u00f3,\u0153,\u00f8,\u014d,\u00f5"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fb,\u00fc,\u00f9,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_en:[Ljava/lang/String;

    .line 886
    const/16 v1, 0x72

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e0,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101,\u0103,\u0105,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u011b,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ee,\u00ef,\u0129,\u00ec,\u012f,\u012b,\u0131,\u0133"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d,\u0151,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u016f,\u00fb,\u00fc,\u00f9,\u016b,\u0169,\u0171,\u0173,\u00b5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df,\u0161,\u015b,\u0219,\u015f"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144,\u0146,\u0148,\u0149,\u014b"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u0107,\u010d,\u00e7,\u010b"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "y,\u00fd,\u0177,\u00ff,\u00fe"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u00f0,\u010f,\u0111"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0159,\u0155,\u0157"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0165,\u021b,\u0163,\u0167"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017a,\u017c,\u017e"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u0137,\u0138"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u013a,\u013c,\u013e,\u0140,\u0142"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u011f,\u0121,\u0123"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "w,\u0175"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\u0125,\u0127"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v3, "w,\u0175"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    aput-object v4, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    aput-object v4, v1, v2

    const/16 v2, 0x48

    aput-object v4, v1, v2

    const/16 v2, 0x49

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    aput-object v4, v1, v2

    const/16 v2, 0x4d

    aput-object v4, v1, v2

    const/16 v2, 0x4e

    aput-object v4, v1, v2

    const/16 v2, 0x4f

    aput-object v4, v1, v2

    const/16 v2, 0x50

    aput-object v4, v1, v2

    const/16 v2, 0x51

    aput-object v4, v1, v2

    const/16 v2, 0x52

    aput-object v4, v1, v2

    const/16 v2, 0x53

    aput-object v4, v1, v2

    const/16 v2, 0x54

    aput-object v4, v1, v2

    const/16 v2, 0x55

    aput-object v4, v1, v2

    const/16 v2, 0x56

    aput-object v4, v1, v2

    const/16 v2, 0x57

    aput-object v4, v1, v2

    const/16 v2, 0x58

    aput-object v4, v1, v2

    const/16 v2, 0x59

    aput-object v4, v1, v2

    const/16 v2, 0x5a

    aput-object v4, v1, v2

    const/16 v2, 0x5b

    aput-object v4, v1, v2

    const/16 v2, 0x5c

    aput-object v4, v1, v2

    const/16 v2, 0x5d

    aput-object v4, v1, v2

    const/16 v2, 0x5e

    aput-object v4, v1, v2

    const/16 v2, 0x5f

    aput-object v4, v1, v2

    const/16 v2, 0x60

    aput-object v4, v1, v2

    const/16 v2, 0x61

    aput-object v4, v1, v2

    const/16 v2, 0x62

    aput-object v4, v1, v2

    const/16 v2, 0x63

    aput-object v4, v1, v2

    const/16 v2, 0x64

    aput-object v4, v1, v2

    const/16 v2, 0x65

    aput-object v4, v1, v2

    const/16 v2, 0x66

    aput-object v4, v1, v2

    const/16 v2, 0x67

    aput-object v4, v1, v2

    const/16 v2, 0x68

    aput-object v4, v1, v2

    const/16 v2, 0x69

    aput-object v4, v1, v2

    const/16 v2, 0x6a

    aput-object v4, v1, v2

    const/16 v2, 0x6b

    const-string v3, "q"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "x"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "\u015d"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "\u011d"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "\u016d"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "\u0109"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "\u0135"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_eo:[Ljava/lang/String;

    .line 1024
    const/16 v1, 0x68

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e0,\u00e4,\u00e2,\u00e3,\u00e5,\u0105,\u00e6,\u0101,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00eb,\u00ea,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ef,\u00ec,\u00ee,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f2,\u00f6,\u00f4,\u00f5,\u00f8,\u0153,\u014d,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u00f9,\u00fb,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7,\u0107,\u010d"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v3, "!fixedColumnOrder!9,\u00a1,\",\',#,-,:,!,\\,,?,\u00bf,@,&,\\%,+,;,/,(,)"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    aput-object v4, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    aput-object v4, v1, v2

    const/16 v2, 0x48

    aput-object v4, v1, v2

    const/16 v2, 0x49

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    aput-object v4, v1, v2

    const/16 v2, 0x4d

    aput-object v4, v1, v2

    const/16 v2, 0x4e

    aput-object v4, v1, v2

    const/16 v2, 0x4f

    aput-object v4, v1, v2

    const/16 v2, 0x50

    aput-object v4, v1, v2

    const/16 v2, 0x51

    aput-object v4, v1, v2

    const/16 v2, 0x52

    aput-object v4, v1, v2

    const/16 v2, 0x53

    aput-object v4, v1, v2

    const/16 v2, 0x54

    aput-object v4, v1, v2

    const/16 v2, 0x55

    aput-object v4, v1, v2

    const/16 v2, 0x56

    aput-object v4, v1, v2

    const/16 v2, 0x57

    aput-object v4, v1, v2

    const/16 v2, 0x58

    aput-object v4, v1, v2

    const/16 v2, 0x59

    aput-object v4, v1, v2

    const/16 v2, 0x5a

    aput-object v4, v1, v2

    const/16 v2, 0x5b

    aput-object v4, v1, v2

    const/16 v2, 0x5c

    aput-object v4, v1, v2

    const/16 v2, 0x5d

    aput-object v4, v1, v2

    const/16 v2, 0x5e

    aput-object v4, v1, v2

    const/16 v2, 0x5f

    aput-object v4, v1, v2

    const/16 v2, 0x60

    aput-object v4, v1, v2

    const/16 v2, 0x61

    aput-object v4, v1, v2

    const/16 v2, 0x62

    aput-object v4, v1, v2

    const/16 v2, 0x63

    aput-object v4, v1, v2

    const/16 v2, 0x64

    const-string v3, "!,\u00a1"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    aput-object v4, v1, v2

    const/16 v2, 0x66

    aput-object v4, v1, v2

    const/16 v2, 0x67

    const-string v3, "?,\u00bf"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_es:[Ljava/lang/String;

    .line 1098
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e4,\u0101,\u00e0,\u00e1,\u00e2,\u00e3,\u00e5,\u00e6,\u0105"

    aput-object v2, v1, v0

    const-string v2, "\u0113,\u00e8,\u0117,\u00e9,\u00ea,\u00eb,\u0119,\u011b"

    aput-object v2, v1, v5

    const-string v2, "\u012b,\u00ec,\u012f,\u00ed,\u00ee,\u00ef,\u0131"

    aput-object v2, v1, v6

    const-string v2, "\u00f6,\u00f5,\u00f2,\u00f3,\u00f4,\u0153,\u0151,\u00f8"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fc,\u016b,\u0173,\u00f9,\u00fa,\u00fb,\u016f,\u0171"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161,\u00df,\u015b,\u015f"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0146,\u00f1,\u0144,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u010d,\u00e7,\u0107"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u00ff"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u010f"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0157,\u0159,\u0155"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0163,\u0165"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e,\u017c,\u017a"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u0137"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u013c,\u0142,\u013a,\u013e"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u0123,\u011f"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u00fc"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u00f6"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u00e4"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u00f5"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_et:[Ljava/lang/String;

    .line 1198
    const/16 v1, 0x6b

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\",\'"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab,\u2018,\u2019,\u201a,\u201b"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v3, "!fixedColumnOrder!8,\",\',#,-,:,!,\u060c,\u061f,@,&,\\%,+,\u061b,/,(,)"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "\u2605,\u066d"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "\u266a"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string v3, "!fixedColumnOrder!4,\ufd3e|\ufd3f,<|>,{|},[|]"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "!fixedColumnOrder!4,\ufd3f|\ufd3e,>|<,}|{,]|["

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "!fixedColumnOrder!3,\u2039|\u203a,\u2264|\u2265,<|>"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "!fixedColumnOrder!3,\u203a|\u2039,\u2265|\u2264,>|<"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "!fixedColumnOrder!7,\u0655,\u0652,\u0651,\u064c,\u064d,\u064b,\u0654,\u0656,\u0670,\u0653,\u064f,\u0650,\u064e,\u0640\u0640\u0640|\u0640"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "\u064b"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "\u06f1"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "\u06f2"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "\u06f3"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "\u06f4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "\u06f5"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "\u06f6"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "\u06f7"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "\u06f8"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "\u06f9"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "\u06f0"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "0,\u066b,\u066c"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    aput-object v4, v1, v2

    const/16 v2, 0x50

    aput-object v4, v1, v2

    const/16 v2, 0x51

    aput-object v4, v1, v2

    const/16 v2, 0x52

    aput-object v4, v1, v2

    const/16 v2, 0x53

    aput-object v4, v1, v2

    const/16 v2, 0x54

    aput-object v4, v1, v2

    const/16 v2, 0x55

    aput-object v4, v1, v2

    const/16 v2, 0x56

    aput-object v4, v1, v2

    const/16 v2, 0x57

    aput-object v4, v1, v2

    const/16 v2, 0x58

    aput-object v4, v1, v2

    const/16 v2, 0x59

    const-string v3, "\u060c"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "\\,"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "\u061f"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "\u061b"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "\u066a"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    aput-object v4, v1, v2

    const/16 v2, 0x5f

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, ";"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "\\%,\u2030"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "\u060c"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "!"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "!,\\,"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    aput-object v4, v1, v2

    const/16 v2, 0x66

    const-string v3, "\u061f"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "\u061f,?"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "\u060c"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "\u061f"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "!fixedColumnOrder!4,:,!,\u061f,\u061b,-,/,\u00ab|\u00bb,\u00bb|\u00ab"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fa:[Ljava/lang/String;

    .line 1327
    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e6,\u00e0,\u00e1,\u00e2,\u00e3,\u0101"

    aput-object v2, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    const-string v2, "\u00f8,\u00f4,\u00f2,\u00f3,\u00f5,\u0153,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fc"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161,\u00df,\u015b"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e,\u017a,\u017c"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u00e5"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u00f6"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u00e4"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u00f8"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\u00e6"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fi:[Ljava/lang/String;

    .line 1374
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e2,%,\u00e6,\u00e1,\u00e4,\u00e3,\u00e5,\u0101,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00ea,\u00eb,%,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ee,%,\u00ef,\u00ec,\u00ed,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f4,\u0153,%,\u00f6,\u00f2,\u00f3,\u00f5,\u00f8,\u014d,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00f9,\u00fb,%,\u00fc,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7,\u0107,\u010d"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "%,\u00ff"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fr:[Ljava/lang/String;

    .line 1427
    const/16 v1, 0x4f

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string v3, "\u0967"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "\u0968"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "\u0969"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "\u096a"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "\u096b"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "\u096c"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "\u096d"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "\u096e"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "\u096f"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "\u0966"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "0"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hi:[Ljava/lang/String;

    .line 1467
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161,\u015b,\u00df"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u010d,\u0107,\u00e7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u0111"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e,\u017a,\u017c"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hr:[Ljava/lang/String;

    .line 1494
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1"

    aput-object v2, v1, v0

    const-string v2, "\u00e9"

    aput-object v2, v1, v5

    const-string v2, "\u00ed"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f6,\u0151"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u0171"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hu:[Ljava/lang/String;

    .line 1512
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e0,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ee,\u00ef,\u00ec,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f6,\u0151,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u0171,\u00fb,\u00f9,\u016b"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hu_ZZ:[Ljava/lang/String;

    .line 1557
    const/16 v1, 0x6b

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string v3, ">"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "<"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v3, "!fixedColumnOrder!8,\u00ab,\u00bb,\u058a,\\,,.,:,\u055d,\u055e,\u055b,\u055c,@,\\%,;,/,(,)"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string v3, "<"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, ">"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    aput-object v4, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    aput-object v4, v1, v2

    const/16 v2, 0x48

    aput-object v4, v1, v2

    const/16 v2, 0x49

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    aput-object v4, v1, v2

    const/16 v2, 0x4d

    aput-object v4, v1, v2

    const/16 v2, 0x4e

    aput-object v4, v1, v2

    const/16 v2, 0x4f

    aput-object v4, v1, v2

    const/16 v2, 0x50

    aput-object v4, v1, v2

    const/16 v2, 0x51

    aput-object v4, v1, v2

    const/16 v2, 0x52

    aput-object v4, v1, v2

    const/16 v2, 0x53

    aput-object v4, v1, v2

    const/16 v2, 0x54

    aput-object v4, v1, v2

    const/16 v2, 0x55

    aput-object v4, v1, v2

    const/16 v2, 0x56

    aput-object v4, v1, v2

    const/16 v2, 0x57

    aput-object v4, v1, v2

    const/16 v2, 0x58

    aput-object v4, v1, v2

    const/16 v2, 0x59

    aput-object v4, v1, v2

    const/16 v2, 0x5a

    aput-object v4, v1, v2

    const/16 v2, 0x5b

    aput-object v4, v1, v2

    const/16 v2, 0x5c

    aput-object v4, v1, v2

    const/16 v2, 0x5d

    aput-object v4, v1, v2

    const/16 v2, 0x5e

    const-string v3, "\u055c,!"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "\u055d,?"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    aput-object v4, v1, v2

    const/16 v2, 0x61

    aput-object v4, v1, v2

    const/16 v2, 0x62

    aput-object v4, v1, v2

    const/16 v2, 0x63

    const-string v3, "\u055d"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "\u055d"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "\u0589"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "\u055e"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "\u055e"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "\u00ab"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "\u00bb"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "\u00bb"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hy:[Ljava/lang/String;

    .line 1609
    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e4,\u00e6,\u00e5,\u00e0,\u00e2,\u00e3,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00eb,\u00e8,\u00ea,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ef,\u00ee,\u00ec,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u00fb,\u00f9,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u00ff"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u00f0"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u00fe"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u00f0"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u00e6"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u00fe"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_is:[Ljava/lang/String;

    .line 1672
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e1,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e8,\u00e9,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ec,\u00ed,\u00ee,\u00ef,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f2,\u00f3,\u00f4,\u00f6,\u00f5,\u0153,\u00f8,\u014d,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00f9,\u00fa,\u00fb,\u00fc,\u016b"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_it:[Ljava/lang/String;

    .line 1717
    const/16 v1, 0x39

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "!fixedColumnOrder!4,\u201c,\u201d,\u00ab|\u00bb,\u00bb|\u00ab,\u2018,\u2019,\u201a,\u201b"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-string v3, "\u2605"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-string v3, "\u00b1,\ufb29"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "!fixedColumnOrder!3,<|>,{|},[|]"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "!fixedColumnOrder!3,>|<,}|{,]|["

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "!fixedColumnOrder!3,\u2039|\u203a,\u2264|\u2265,\u00ab|\u00bb"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "!fixedColumnOrder!3,\u203a|\u2039,\u2265|\u2264,\u00bb|\u00ab"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_iw:[Ljava/lang/String;

    .line 1762
    const/16 v1, 0x29

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v3, "\u0449"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\u044a"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\u044b"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\u044d"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\u0438"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "\u04af"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "\u04a3"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string v3, "\u04e9"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "\u044a"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v3, "\u0451"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ky:[Ljava/lang/String;

    .line 1795
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0105,\u00e4,\u0101,\u00e0,\u00e1,\u00e2,\u00e3,\u00e5,\u00e6"

    aput-object v2, v1, v0

    const-string v2, "\u0117,\u0119,\u0113,\u00e8,\u00e9,\u00ea,\u00eb,\u011b"

    aput-object v2, v1, v5

    const-string v2, "\u012f,\u012b,\u00ec,\u00ed,\u00ee,\u00ef,\u0131"

    aput-object v2, v1, v6

    const-string v2, "\u00f6,\u00f5,\u00f2,\u00f3,\u00f4,\u0153,\u0151,\u00f8"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u016b,\u0173,\u00fc,\u016b,\u00f9,\u00fa,\u00fb,\u016f,\u0171"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161,\u00df,\u015b,\u015f"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0146,\u00f1,\u0144,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u010d,\u00e7,\u0107"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u00ff"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u010f"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0157,\u0159,\u0155"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0163,\u0165"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e,\u017c,\u017a"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u0137"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u013c,\u0142,\u013a,\u013e"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u0123,\u011f"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lt:[Ljava/lang/String;

    .line 1885
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0101,\u00e0,\u00e1,\u00e2,\u00e3,\u00e4,\u00e5,\u00e6,\u0105"

    aput-object v2, v1, v0

    const-string v2, "\u0113,\u0117,\u00e8,\u00e9,\u00ea,\u00eb,\u0119,\u011b"

    aput-object v2, v1, v5

    const-string v2, "\u012b,\u012f,\u00ec,\u00ed,\u00ee,\u00ef,\u0131"

    aput-object v2, v1, v6

    const-string v2, "\u00f2,\u00f3,\u00f4,\u00f5,\u00f6,\u0153,\u0151,\u00f8"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u016b,\u0173,\u00f9,\u00fa,\u00fb,\u00fc,\u016f,\u0171"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161,\u00df,\u015b,\u015f"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0146,\u00f1,\u0144,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u010d,\u00e7,\u0107"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u00ff"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u010f"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0157,\u0159,\u0155"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0163,\u0165"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e,\u017c,\u017a"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u0137"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u013c,\u0142,\u013a,\u013e"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u0123,\u011f"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lv:[Ljava/lang/String;

    .line 1974
    const/16 v1, 0x2d

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v3, "\u0455"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "\u045c"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "\u0437"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "\u0453"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "\u0450"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "\u045d"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb,\u2018,\u2019,\u201a,\u201b"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_mk:[Ljava/lang/String;

    .line 2010
    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e4,\u00e1,\u00e2,\u00e3,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00ea,\u00eb,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    aput-object v4, v1, v6

    const-string v2, "\u00f4,\u00f2,\u00f3,\u00f6,\u00f5,\u0153,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u00e5"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u00f8"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u00e6"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u00f6"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\u00e4"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nb:[Ljava/lang/String;

    .line 2057
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e4,\u00e2,\u00e0,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00eb,\u00ea,\u00e8,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ef,\u00ec,\u00ee,\u012f,\u012b,\u0133"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u00fb,\u00f9,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u0133"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nl:[Ljava/lang/String;

    .line 2108
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0105,\u00e1,\u00e0,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u0119,\u00e8,\u00e9,\u00ea,\u00eb,\u0117,\u0113"

    aput-object v2, v1, v5

    aput-object v4, v1, v6

    const-string v2, "\u00f3,\u00f6,\u00f4,\u00f2,\u00f5,\u0153,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u015b,\u00df,\u0161"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0144,\u00f1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u0107,\u00e7,\u010d"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017c,\u017a,\u017e"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u0142"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pl:[Ljava/lang/String;

    .line 2162
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e3,\u00e0,\u00e2,\u00e4,\u00e5,\u00e6,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00ea,\u00e8,\u0119,\u0117,\u0113,\u00eb"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ee,\u00ec,\u00ef,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f5,\u00f4,\u00f2,\u00f6,\u0153,\u00f8,\u014d,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u00f9,\u00fb,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7,\u010d,\u0107"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pt:[Ljava/lang/String;

    .line 2212
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    const-string v2, "\u00f2,\u00f3,\u00f6,\u00f4,\u00f5,\u0153,\u00f8"

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_rm:[Ljava/lang/String;

    .line 2227
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e2,\u00e3,\u0103,\u00e0,\u00e1,\u00e4,\u00e6,\u00e5,\u0101"

    aput-object v2, v1, v0

    aput-object v4, v1, v5

    const-string v2, "\u00ee,\u00ef,\u00ec,\u00ed,\u012f,\u012b"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0219,\u00df,\u015b,\u0161"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u021b"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ro:[Ljava/lang/String;

    .line 2261
    const/16 v1, 0x29

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v3, "\u0449"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\u044a"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\u044b"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\u044d"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\u0438"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v3, "\u044a"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v3, "\u0451"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ru:[Ljava/lang/String;

    .line 2289
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e4,\u0101,\u00e0,\u00e2,\u00e3,\u00e5,\u00e6,\u0105"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u011b,\u0113,\u0117,\u00e8,\u00ea,\u00eb,\u0119"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u012b,\u012f,\u00ec,\u00ee,\u00ef,\u0131"

    aput-object v2, v1, v6

    const-string v2, "\u00f4,\u00f3,\u00f6,\u00f2,\u00f5,\u0153,\u0151,\u00f8"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u016f,\u00fc,\u016b,\u0173,\u00f9,\u00fb,\u0171"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161,\u00df,\u015b,\u015f"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0148,\u0146,\u00f1,\u0144,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u010d,\u00e7,\u0107"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u00ff"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u010f"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0155,\u0159,\u0157"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0165,\u0163"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e,\u017c,\u017a"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u0137"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u013e,\u013a,\u013c,\u0142"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u0123,\u011f"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sk:[Ljava/lang/String;

    .line 2379
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0161"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u010d,\u0107"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u0111"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017e"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sl:[Ljava/lang/String;

    .line 2399
    const/16 v1, 0x2d

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v3, "\u0437"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "\u045b"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "\u0455"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "\u0452"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "\u0450"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "\u045d"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "!fixedColumnOrder!5,\u201e,\u201c,\u201d,\u00ab,\u00bb,\u2018,\u2019,\u201a,\u201b"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sr:[Ljava/lang/String;

    .line 2454
    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00ea,\u00eb,\u0119"

    aput-object v2, v1, v5

    aput-object v4, v1, v6

    const-string v2, "\u0153,\u00f4,\u00f2,\u00f3,\u00f5,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df,\u015b,\u0161"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u00e5"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u00f6"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u00e4"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u00f8"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\u00e6"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sv:[Ljava/lang/String;

    .line 2496
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e1,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e8,\u00e9,\u00ea,\u00eb,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ee,\u00ef,\u00ed,\u012b,\u00ec"

    aput-object v2, v1, v6

    const-string v2, "\u00f4,\u00f6,\u00f2,\u00f3,\u0153,\u00f8,\u014d,\u00f5"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fb,\u00fc,\u00f9,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v3, "g\'"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sw:[Ljava/lang/String;

    .line 2547
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e1,\u00e0,\u00e4,\u00e2,\u00e3,\u00e5,\u0105,\u00e6,\u0101,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e9,\u00e8,\u00eb,\u00ea,\u0119,\u0117,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ed,\u00ef,\u00ec,\u00ee,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f3,\u00f2,\u00f6,\u00f4,\u00f5,\u00f8,\u0153,\u014d,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fa,\u00fc,\u00f9,\u00fb,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7,\u0107,\u010d"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_tl:[Ljava/lang/String;

    .line 2601
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e2"

    aput-object v2, v1, v0

    aput-object v4, v1, v5

    const-string v2, "\u0131,\u00ee,\u00ef,\u00ec,\u00ed,\u012f,\u012b"

    aput-object v2, v1, v6

    const-string v2, "\u00f6,\u00f4,\u0153,\u00f2,\u00f3,\u00f5,\u00f8,\u014d"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fc,\u00fb,\u00f9,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u015f,\u00df,\u015b,\u0161"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7,\u0107,\u010d"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u011f"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_tr:[Ljava/lang/String;

    .line 2646
    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v6

    aput-object v4, v1, v7

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v3, "\u0449"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\u0457"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\u0456"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\u0454"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\u0438"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string v3, "\u0491"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "\u0457"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v3, "\u044a"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_uk:[Ljava/lang/String;

    .line 2673
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e1,\u1ea3,\u00e3,\u1ea1,\u0103,\u1eb1,\u1eaf,\u1eb3,\u1eb5,\u1eb7,\u00e2,\u1ea7,\u1ea5,\u1ea9,\u1eab,\u1ead"

    aput-object v2, v1, v0

    const-string v2, "\u00e8,\u00e9,\u1ebb,\u1ebd,\u1eb9,\u00ea,\u1ec1,\u1ebf,\u1ec3,\u1ec5,\u1ec7"

    aput-object v2, v1, v5

    const-string v2, "\u00ec,\u00ed,\u1ec9,\u0129,\u1ecb"

    aput-object v2, v1, v6

    const-string v2, "\u00f2,\u00f3,\u1ecf,\u00f5,\u1ecd,\u00f4,\u1ed3,\u1ed1,\u1ed5,\u1ed7,\u1ed9,\u01a1,\u1edd,\u1edb,\u1edf,\u1ee1,\u1ee3"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00f9,\u00fa,\u1ee7,\u0169,\u1ee5,\u01b0,\u1eeb,\u1ee9,\u1eed,\u1eef,\u1ef1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u1ef3,\u00fd,\u1ef7,\u1ef9,\u1ef5"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u0111"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_vi:[Ljava/lang/String;

    .line 2754
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e1,\u00e2,\u00e4,\u00e6,\u00e3,\u00e5,\u0101"

    aput-object v2, v1, v0

    const-string v2, "\u00e8,\u00e9,\u00ea,\u00eb,\u0113"

    aput-object v2, v1, v5

    const-string v2, "\u00ee,\u00ef,\u00ed,\u012b,\u00ec"

    aput-object v2, v1, v6

    const-string v2, "\u00f4,\u00f6,\u00f2,\u00f3,\u0153,\u00f8,\u014d,\u00f5"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00fb,\u00fc,\u00f9,\u00fa,\u016b"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_zu:[Ljava/lang/String;

    .line 2801
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u00e0,\u00e1,\u00e2,\u00e3,\u00e4,\u00e5,\u00e6,\u00e3,\u00e5,\u0101,\u0103,\u0105,\u00aa"

    aput-object v2, v1, v0

    const-string v2, "\u00e8,\u00e9,\u00ea,\u00eb,\u0113,\u0115,\u0117,\u0119,\u011b"

    aput-object v2, v1, v5

    const-string v2, "\u00ec,\u00ed,\u00ee,\u00ef,\u0129,\u012b,\u012d,\u012f,\u0131,\u0133"

    aput-object v2, v1, v6

    const-string v2, "\u00f2,\u00f3,\u00f4,\u00f5,\u00f6,\u00f8,\u014d,\u014f,\u0151,\u0153,\u00ba"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "\u00f9,\u00fa,\u00fb,\u00fc,\u0169,\u016b,\u016d,\u016f,\u0171,\u0173"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u00df,\u015b,\u015d,\u015f,\u0161,\u017f"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u00f1,\u0144,\u0146,\u0148,\u0149,\u014b"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u00e7,\u0107,\u0109,\u010b,\u010d"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u00fd,\u0177,\u00ff,\u0133"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u010f,\u0111,\u00f0"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0155,\u0157,\u0159"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u00fe,\u0163,\u0165,\u0167"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u017a,\u017c,\u017e"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u0137,\u0138"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u013a,\u013c,\u013e,\u0140,\u0142"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u011d,\u011f,\u0121,\u0123"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v3, "\u0125"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\u0135"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\u0175"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_zz:[Ljava/lang/String;

    .line 2923
    const/16 v1, 0x5a

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DEFAULT"

    aput-object v2, v1, v0

    sget-object v2, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "af"

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_af:[Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "ar"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ar:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "be"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_be:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ca"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ca:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "cs"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_cs:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "da"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_da:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "de"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_de:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "en"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_en:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "eo"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_eo:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "es"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_es:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "et"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_et:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "fa"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fa:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "fi"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fi:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "fr"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_fr:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "hi"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hi:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "hr"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hr:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "hu"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hu:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "hu_ZZ"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hu_ZZ:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "hy"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_hy:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "is"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_is:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "it"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_it:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "iw"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_iw:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "ky"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ky:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "lt"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lt:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "lv"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_lv:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "mk"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_mk:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "nb"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nb:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "nl"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_nl:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "pl"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pl:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "pt"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_pt:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "rm"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_rm:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "ro"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ro:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "ru"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_ru:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "sk"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sk:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "sl"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sl:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "sr"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sr:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "sv"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sv:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "sw"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_sw:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "tl"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_tl:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "tr"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_tr:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "uk"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_uk:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "vi"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_vi:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "zu"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_zu:[Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "zz"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_zz:[Ljava/lang/String;

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    .line 2973
    sget-object v4, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->NAMES:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 2974
    sget-object v7, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->sNameToIdsMap:Ljava/util/HashMap;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2973
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2977
    :goto_1
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 2978
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 2979
    sget-object v1, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGES_AND_TEXTS:[Ljava/lang/Object;

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 2980
    sget-object v3, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->sLocaleToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2977
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_1

    .line 2982
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mResourceNameToTextsMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mResourceNameToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 86
    :goto_0
    return-object v2

    .line 83
    :cond_0
    sget-object v2, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->sNameToIdsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 84
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v2, v3

    .line 86
    :goto_1
    if-nez v1, :cond_3

    sget-object v2, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0

    .line 85
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 86
    goto :goto_0
.end method

.method public loadStringResources(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->RESOURCE_NAMES:[Ljava/lang/String;

    const v1, 0x7f0a002b

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->loadStringResourcesInternal(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method loadStringResourcesInternal(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "resourceNames"
    .parameter "referenceId"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 71
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, packageName:Ljava/lang/String;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 73
    .local v6, resName:Ljava/lang/String;
    const-string v7, "string"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 74
    .local v5, resId:I
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mResourceNameToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v5           #resId:I
    .end local v6           #resName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 57
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->sLocaleToTextsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->LANGUAGE_DEFAULT:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardTextsSet;->mTexts:[Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method
