.class public Lcom/android/nfc/NfcBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "NfcBackupAgent.java"


# static fields
.field static final SHARED_PREFS_BACKUP_KEY:Ljava/lang/String; = "shared_prefs"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 5

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "NfcServicePrefs"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 31
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "shared_prefs"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_1a

    .line 32
    invoke-static {}, Lcom/android/nfc/ANfcBackupAgent;->aspectOf()Lcom/android/nfc/ANfcBackupAgent;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/nfc/ANfcBackupAgent;->ajc$after$com_android_nfc_ANfcBackupAgent$1$c3e724a0(Lcom/android/nfc/NfcBackupAgent;)V

    return-void

    .end local v0    # "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    :catch_1a
    move-exception v1

    invoke-static {}, Lcom/android/nfc/ANfcBackupAgent;->aspectOf()Lcom/android/nfc/ANfcBackupAgent;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/nfc/ANfcBackupAgent;->ajc$after$com_android_nfc_ANfcBackupAgent$1$c3e724a0(Lcom/android/nfc/NfcBackupAgent;)V

    throw v1
.end method
