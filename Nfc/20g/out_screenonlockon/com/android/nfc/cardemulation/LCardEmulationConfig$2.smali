.class Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;
.super Ljava/util/HashMap;
.source "LCardEmulationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 66
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
