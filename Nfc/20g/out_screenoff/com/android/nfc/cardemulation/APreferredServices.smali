.class public Lcom/android/nfc/cardemulation/APreferredServices;
.super Ljava/lang/Object;
.source "APreferredServices.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "APreferredServices.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/APreferredServices;


# instance fields
.field mCEPrefs:Landroid/content/SharedPreferences;

.field mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/APreferredServices;->DBG:Z

    invoke-static {}, Lcom/android/nfc/cardemulation/APreferredServices;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/cardemulation/APreferredServices;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/cardemulation/APreferredServices;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/APreferredServices;-><init>()V

    sput-object v0, Lcom/android/nfc/cardemulation/APreferredServices;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/APreferredServices;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/cardemulation/APreferredServices;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/APreferredServices;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/APreferredServices;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_cardemulation_APreferredServices"

    sget-object v2, Lcom/android/nfc/cardemulation/APreferredServices;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/cardemulation/APreferredServices;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/APreferredServices;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/APreferredServices;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/APreferredServices;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$before$com_android_nfc_cardemulation_APreferredServices$1$e8492245(Lcom/android/nfc/cardemulation/PreferredServices;I)V
    .registers 8
    .param p1, "service"    # Lcom/android/nfc/cardemulation/PreferredServices;
    .param p2, "userId"    # I
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Before;
        argNames = "service,userId"
        value = "setInitHCEPopupValue(service, userId)"
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 29
    iget-object v0, p1, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    .line 30
    .local v0, "context":Landroid/content/Context;
    sget-boolean v1, Lcom/android/nfc/cardemulation/APreferredServices;->DBG:Z

    const-string v2, "APreferredServices.aj"

    const-string v3, "before : exceution(PreferredServices.SettingsObserver.loadDefaultsFromSettings(..))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "NfcServiceCEPrefs"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/APreferredServices;->mCEPrefs:Landroid/content/SharedPreferences;

    .line 32
    iget-object v1, p0, Lcom/android/nfc/cardemulation/APreferredServices;->mCEPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/APreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v1, p0, Lcom/android/nfc/cardemulation/APreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hcepopup"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v1, p0, Lcom/android/nfc/cardemulation/APreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    iget-object v1, p0, Lcom/android/nfc/cardemulation/APreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hceconfirm"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    iget-object v1, p0, Lcom/android/nfc/cardemulation/APreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    return-void
.end method

.method public synthetic ajc$pointcut$$setInitHCEPopupValue$2f1(Lcom/android/nfc/cardemulation/PreferredServices;I)V
    .registers 3
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "service,userId"
        value = "(execution(* com.android.nfc.cardemulation.PreferredServices.loadDefaultsFromSettings(int)) && (this(service) && args(userId)))"
    .end annotation

    .prologue
    .line 26
    return-void
.end method
